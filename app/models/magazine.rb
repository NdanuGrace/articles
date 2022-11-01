require_relative './article'


class Magazine

  attr_accessor :name, :category

@@all = []
  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

def name
  @name
end

def category
  @category
end

def self.all
  @@all
end

# `Magazine#contributors`
#   - Returns an array of Author instances who have written for this magazine
def contributors
 self.articles.map {|article|article.author}.uniq
end


  # - Given a string of magazine's name, this method returns the first magazine object that matches
  def self.find_by_name(name:)
 self.all.find{|magazine| magazine.name == name}
  end

  #Returns an array strings of the titles of all articles written for that magazine

  def article_titles
  self.articles.map {|article| article.title}
  end


#Returns an array of authors who have written more than 2 articles for the magazine
  def contributing_authors
    self.contributors.filter {|author| author.articles.count > 2}
  end


end

