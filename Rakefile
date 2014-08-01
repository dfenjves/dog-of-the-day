require_relative "./lib/dogscraper.rb"

task :send_dog do
	mail = Email.new
	dog = DogScrape.new
	mail.send_mail(dog.html_email)
end