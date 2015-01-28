require 'rubygems'
require 'mechanize'
agent = Mechanize.new
page = agent.get('http://www.prada.com/en/US/e-store/department/woman/handbags.html?cmp=from_home')
fp = File.new('prada_prices','w')
page = page.search("//ol[@class='nextItem']").each do |i|
  fp.write(i.text + "\n")
end