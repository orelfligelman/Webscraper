require 'mechanize'

mechanize = Mechanize.new

page = mechanize.get('http://en.wikipedia.org/wiki/Main_Page')

link = page.link_with(text: 'Random article')

page = link.click

puts page.uri