require "mechanize"
require "nokogiri"

url = ARGV[0] #get the url from command line input
fp = File.new("wikilinks.txt", "w")

agent = Mechanize.new { |agent| agent.user_agent_alias = "Mac Safari" } #instantiate new agent object

html = agent.get(url).body #Stores url

html_doc = Nokogiri::HTML(html) #Contents of html document

fp.write("References\n\n")

list = html_doc.xpath("//ol[@class='references']")
list.each { |i| fp.write(i.text + "\n") }

fp.write("Further Reading\n\n")

list = html_doc.xpath("//span[@class='citation']")
list.each { |i| fp.write(i.text + "\n") }