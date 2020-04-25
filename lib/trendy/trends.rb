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
        ranking.each do |ranks|
            trends = Trends.new
            trends.name = ranks.css("p:nth-child(1)").text.delete!("\n").strip
            trends.artist = ranks.css("p:nth-child(2)").text.delete!("\n").strip
            trends.genre = ranks.css("p:nth-child(5)").text.delete!("\n").strip
            @@all << trends
        end
    end

    def self.list
        list = []
        self.all.each do |trends|
            list << trends.artist
        end
        list.sort.each do |trends_name|
            puts trends_name
        end
    end

    def self.find_by_name(input)
        self.all.find{|trends| trends.artist.downcase == input.downcase}
    end
end