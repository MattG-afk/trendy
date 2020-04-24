require 'pry'
class Trends

    attr_accessor :name, :artist, :genre, :rank

    @@all = []

    def initialize
        @name = name
        @artist = artist
        @genre = genre
        @rank = rank
    end

    def self.all
        @@all
    end

    def self.create
        html = Scraper.get_page
        ranking = html.css("ul.bucket-items.ec-bucket li")
            binding.pry
        ranking.each do |ranks|
            trends = Trends.new
            trends.name = ranks.css("p:nth-child(1)").text
        end
    end
end