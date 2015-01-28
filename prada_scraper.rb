require 'rubygems'
require 'mechanize'
require 'nokogiri'
require 'open-uri'
agent = Mechanize.new
page = agent.get('http://www.prada.com/en/US/e-store/department/woman/handbags.html?cmp=from_home')
item = page.search(".nextItem")
item.each do |item|
	price = item.search(".itemPrice").text
	puts price
end

