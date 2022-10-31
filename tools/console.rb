require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
author1 = Author.new("Steve")
author2 = Author.new("Anna")


magazine1 = Magazine.new("Forbes", "entertainment")
magazine1 = Magazine.new("Vogue", "Fashion")
magazine1 = Magazine.new("Time", "News")

article1 = Article.new("Steve", "Forbes", "Wealth")
article2 = Article.new("Steve", "Time", "Market")
article1 = Article.new("Anna", "Vogue", "Beauty")














### DO NOT REMOVE THIS
binding.pry

0
