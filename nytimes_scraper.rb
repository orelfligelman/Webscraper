require 'rubygems'
require 'mechanize'

agent = Mechanize.new
page = agent.get('http://www.google.com/')

page.links.each do |link|
	puts link.text
end

#pp page

google_form = page.form('f')
google_form.q = 'ruby Mechanize'
pp google_form

page = agent.submit(google_form, google_form.buttons.first)
pp page