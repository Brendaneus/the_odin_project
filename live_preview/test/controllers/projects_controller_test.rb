require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest

	def setup
		@course = courses(:one)
		@project = projects(:one_one)
	end

	test "should get show" do
		# Name only
		get course_project_path(@course.slug, @project.slug)
		assert_response :success
		assert_select 'h1', {text: @project.notes}, 1
		assert_select 'p', @project.notes, 0
		# assert_select 'a[href=?]', @project.tutorial, false
		# assert_select 'a[href=?]', @project.source, false
		# assert_select 'a[href=?]', @project.url, false

		# # Add notes
		# get course_project_path(@course, @project)
		# assert_response :success
		# assert_select 'h1', @project.name
		# assert_select 'p', @project.notes, 1
		# assert_select 'a[href=?]', @project.tutorial, 0
		# assert_select 'a[href=?]', @project.source, 0
		# assert_select 'a[href=?]', @project.url, 0

		# # Add tutorial
		# @course.tutorial = "www.example.com"
		# get course_project_path(@course, @project)
		# assert_response :success
		# assert_select 'h1', @project.name
		# assert_select 'p', @project.notes, 1
		# assert_select 'a[href=?]', @project.tutorial, 1
		# assert_select 'a[href=?]', @project.source, 0
		# assert_select 'a[href=?]', @project.url, 0

		# # Add source
		# get course_project_path(@course, @project)
		# assert_response :success
		# assert_select 'h1', @project.name
		# assert_select 'p', @project.notes, 1
		# assert_select 'a[href=?]', @project.tutorial, 1
		# assert_select 'a[href=?]', @project.source, 1
		# assert_select 'a[href=?]', @project.url, 0

		# # Add url
		# get course_project_path(@course, @project)
		# assert_response :success
		# assert_select 'h1', @project.name
		# assert_select 'p', @project.notes, 1
		# assert_select 'a[href=?]', @project.tutorial, 1
		# assert_select 'a[href=?]', @project.source, 1
		# assert_select 'a[href=?]', @project.url, 1
	end

end
