require "watir-webdriver"

profile = Selenium::WebDriver::Firefox::Profile.new
profile["webdriver.log.file"] = "~/Documents/github/zeljkofilipin/page-object-minimal/firefox.log"

browser = Watir::Browser.new :firefox, profile: profile
browser.goto "http://en.wikipedia.beta.wmflabs.org/wiki/Main_Page"

p browser.a(href: "/w/index.php?title=Main_Page&action=history").exist?
#p browser.a(href: /action=history/).exist?

browser.close
