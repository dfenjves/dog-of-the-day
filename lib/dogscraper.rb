require 'nokogiri'
require 'open-uri'
require_relative 'mailer.rb'

class DogScrape

	def initialize
		tumblr_html = open("http://daschund-addicted.tumblr.com/")
		@dasch = Nokogiri::HTML(tumblr_html)
	end

	def get_random_dog_picture
		@dasch.css("img.shakeimage").to_a.sample.attributes["src"].text
	end

	def html_email
		"<img src='#{get_random_dog_picture}'>"
	end

end