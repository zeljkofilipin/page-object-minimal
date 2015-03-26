require "watir-webdriver"
browser = Watir::Browser.new :firefox
browser.goto "http://en.wikipedia.beta.wmflabs.org/wiki/Main_Page"
p browser.a(href: "/w/index.php?title=Main_Page&action=history").exist?
#p browser.a(href: /action=history/).exist?
browser.close
