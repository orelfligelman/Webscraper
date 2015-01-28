require 'open-uri'
require 'nokogiri'
url = 'http://www.prada.com/en/US/e-store/department/woman/handbags.html?cmp=from_home'
html = open(url)
doc = Nokogiri::HTML(html)
nextItem = []
doc.css('.body').each do |nextItem|
	nextItem = ['id']
puts nextItem
nextItem.inspect
end
File.write("prada.txt", doc)