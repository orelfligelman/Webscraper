require 'mechanize'

mechanize = Mechanize.new

page = mechanize.get('https://www.gov.uk/')

form = page.forms.first

form['q'] = 'passport'

page = form.submit

page.search('#top-results h3').each do |h3|
  puts h3.text.strip
end