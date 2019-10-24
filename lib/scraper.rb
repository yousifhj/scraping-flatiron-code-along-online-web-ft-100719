require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

class Scraper
  
  def get_page 
    doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
    
    doc.css(".post")
    doc.css(".post").first.css("h2").text
    doc.css(".post").first.css(".date").text
    doc.css(".post").first.css("p").text
    
    
    
    
  end 
  
end

Scraper.new.get_page
