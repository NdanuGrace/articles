require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
author1 = Author.new("Steve")
author2 = Author.new("Anna")


magazine1 = Magazine.new("Forbes", "entertainment")
magazine2 = Magazine.new("Vogue", "Fashion")
magazine3 = Magazine.new("Time", "News")
magazine3 = Magazine.new("Seas", "nature")



article1 = Article.new(author1, magazine1, "Wealth")
article2 = Article.new(author1, magazine3, "Market")
article3 = Article.new(author2, magazine2, "Beauty")













### DO NOT REMOVE THIS
binding.pry

0
