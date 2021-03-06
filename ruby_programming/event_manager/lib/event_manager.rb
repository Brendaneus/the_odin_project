require 'csv'
require 'google/apis/civicinfo_v2'
require 'erb'

def clean_zipcode(zipcode)
	zipcode.to_s.rjust(5,"0")[0..4]
end

def clean_phone_number(phone_number='')
	match = phone_number.match(/^1*\(*(\d{3})\)*[\-\.\s]*(\d{3})[\-\.\s]*(\d{4})$/)
	match.captures.join('-') unless match.nil?
end

def collect_days_and_hours(date_time)
	time = DateTime.strptime(date_time, '%m/%d/%y %H:%M')
	@days[Date::DAYNAMES[time.wday]] += 1
	@hours[time.hour] += 1
end

def legislators_by_zipcode(zip)
	civic_info = Google::Apis::CivicinfoV2::CivicInfoService.new
	civic_info.key = 'AIzaSyClRzDqDh5MsXwnCWi0kOiiBivP6JsSyBw'
	
	begin
		civic_info.representative_info_by_address(
			address: zip,
			levels: 'country',
			roles: ['legislatorUpperBody', 'legislatorLowerBody']
			).officials
	rescue
		"You can find your representatives by visiting www.commoncause.org/take-action/find-elected-officials"
	end
end

def save_thank_you_letters(id,form_letter)
	Dir.mkdir("output") unless Dir.exists? "output"
	
	filename = "output/thanks_#{id}.html"

	File.open(filename,"w") do |file|
		file.puts form_letter
	end
end


puts "EventManager initialized."

contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol

template_letter = File.read "form_letter.erb"
erb_template = ERB.new template_letter

@days = Hash.new(0)
@hours = Hash.new(0)

contents.each do |row|
	id = row[0]
	name = row[:first_name]
	zipcode = clean_zipcode(row[:zipcode])
	legislators = legislators_by_zipcode(zipcode)
	phone_number = clean_phone_number(row[:homephone])
	collect_days_and_hours(row[:regdate])
	
	form_letter = erb_template.result(binding)

	save_thank_you_letters(id,form_letter)
end

puts "----"
p @days
p @hours