!function(e){var n={};function t(c){if(n[c])return n[c].exports;var a=n[c]={i:c,l:!1,exports:{}};return e[c].call(a.exports,a,a.exports,t),a.l=!0,a.exports}t.m=e,t.c=n,t.d=function(e,n,c){t.o(e,n)||Object.defineProperty(e,n,{enumerable:!0,get:c})},t.r=function(e){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},t.t=function(e,n){if(1&n&&(e=t(e)),8&n)return e;if(4&n&&"object"==typeof e&&e&&e.__esModule)return e;var c=Object.create(null);if(t.r(c),Object.defineProperty(c,"default",{enumerable:!0,value:e}),2&n&&"string"!=typeof e)for(var a in e)t.d(c,a,function(n){return e[n]}.bind(null,a));return c},t.n=function(e){var n=e&&e.__esModule?function(){return e.default}:function(){return e};return t.d(n,"a",n),n},t.o=function(e,n){return Object.prototype.hasOwnProperty.call(e,n)},t.p="",t(t.s=0)}([function(e,n,t){"use strict";t.r(n);const c=document.createElement("article");c.id="landing";const a=document.createElement("h1");a.className="headline",a.innerText="Welcome";const i=document.createElement("img");i.src="catalina_banner_large.jpg",i.id="banner_large";const r=document.createElement("img");r.src="catalina_banner_small.jpg",r.id="banner_small";const o=document.createElement("p");function l(){"active"!=c.className&&(c.appendChild(i),c.appendChild(r),c.appendChild(o),c.className="active")}function d(){"inactive"!=c.className&&(c.removeChild(i),c.removeChild(r),c.removeChild(o),c.className="inactive")}o.innerText="The premier helecopter leasing event.",o.id="description";const s=document.createElement("article");s.id="menu";const m=document.createElement("h1");m.className="headline",m.innerText="Menu";const u=document.createElement("section");u.id="listings";const p=document.createElement("p");p.innerText="Scout Helecopter";const f=document.createElement("p");f.innerText="Transport Helecopter";const v=document.createElement("p");function h(){"inactive"!=s.className&&(s.removeChild(u),s.className="inactive")}v.innerText="Attack Helecopter",u.appendChild(p),u.appendChild(f),u.appendChild(v);const C=document.createElement("article");C.id="contact";const E=document.createElement("h1");E.className="headline",E.innerText="Contact";const b=document.createElement("p");function N(){"inactive"!=C.className&&(C.removeChild(b),C.className="inactive")}function g(){l(),h(),N()}b.innerText="Please call for more information: 508-543-7962",window.addEventListener("load",(function(){document.querySelector("div#content").appendChild(c),c.appendChild(a),document.querySelector("div#content").appendChild(s),s.appendChild(m),document.querySelector("div#content").appendChild(C),C.appendChild(E),l(),s.className="inactive",C.className="inactive"})),window.addEventListener("load",g),c.addEventListener("click",g),s.addEventListener("click",(function(){d(),"active"!=s.className&&(s.appendChild(u),s.className="active"),N()})),C.addEventListener("click",(function(){d(),h(),"active"!=C.className&&(C.appendChild(b),C.className="active")}))}]);