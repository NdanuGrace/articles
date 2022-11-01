# # Please copy/paste all three classes into this file to submit your solution!

#Author
class Author
  attr_reader :name

@@all= []
  def initialize(name)
    @name = name
  @@all<< self
  end

def name
  @name
end

# `Author#articles`
# - Returns an array of Article instances the author has written
def articles
  Article.all.filter  {|article| article.author == self}
end


# `Author#magazines`
# - Returns a **unique** array of Magazine instances for which the author has contributed to
def magazines
self.articles.map{|article| article.magazine}.uniq
end

# - Given a magazine (as Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine.
def add_article(magazine, title)

Article.new( self, magazine, title)
end


# - Returns a **unique** array of strings with the categories of the magazines the author has contributed to
def topic_areas
  self.magazines.map{|magazine|magazine.category}.uniq
end

def self.all
  @@all
end

end


# Magazine
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

def articles
  Article.all.filter {|article| article.magazine == self}
end

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

#Article
class Article
  attr_reader :author, :magazine, :title
  
  @@all = []
  def initialize(author:, magazine:, title:)
      @author = author
      @magazine = magazine
      @title = title
      @@all << self
  
  
      
      def self.all
          @@all
      end
  
  
  end

