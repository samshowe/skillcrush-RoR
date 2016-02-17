require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.skillcrush.com'))

#some example searches

#puts doc.search("h1")
#puts doc.search("h1.entry-title")
#puts doc.css(".entry-title")
#puts doc.css(".entry-title").inner_html
#puts doc.css(".entry-title").children
#puts doc.css(".entry-title").children[0]

#to see all the methods that can be used enter
puts doc.methods
#caution: it's a crap ton
