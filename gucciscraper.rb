require 'nokogiri'
require 'open-uri'
page = 'http://www.gucci.com/us/category/m/men_s_shoes'
doc = Nokogiri::HTML(open(page))
src = doc.at('.imgcontainer')['src']
File.open("polished leather penny loafer.png", "wb") do |f|
	f.write(open(src).read)
end

