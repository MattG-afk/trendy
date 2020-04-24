require "nokogiri"
require "open-uri"
require "pry"

class Scraper
    def self.get_page
        html = Nokogiri::HTML(open("https://www.beatport.com/genre/dubstep/18/top-100"))

    end
end