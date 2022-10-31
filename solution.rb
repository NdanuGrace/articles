# Please copy/paste all three classes into this file to submit your solution!
          # article class
class Article
    attr_reader :author, :magazine, :title
    
    @@all = []
    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    
    
        def title
            @title
        end
    
        def self.all
            @@all
        end
    
    
       def author
        @author
       end
       
       def magazine
        @magazine
       end
    end
    end



        # class Author
    require_relative "./article.rb"

class Author
  attr_accessor :name


  def initialize(name)
    @name = name
  
  end

def name
  @name
end

# `Author#articles`
# - Returns an array of Article instances the author has written
def articles
  Article.all.map do |article|
  if article.author.name == self.name
    article
  end
end
end

# `Author#magazines`
# - Returns a **unique** array of Magazine instances for which the author has contributed to
def magazines
  @magazines= Article.all.map do |article|
    if article.author.name == self.name
      article.magazine
    end
  end
    @magazines.uniq
end

# - Given a magazine (as Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine.
def add_article(magazine, title)

 a1= Article.new( magazine, title)
end


# - Returns a **unique** array of strings with the categories of the magazines the author has contributed to
def topic_areas
  @topics = Article.all.map do |article|
    if article.author.name == self.name
      article.magazine.category
    end
  end
  @topics.uniq
end


end



       # class Magazine
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
    Article.all.map |article|
    if article.magazine.name == self.name
      article.author.name
    end
  
  
    # - Given a string of magazine's name, this method returns the first magazine object that matches
    def self.find_by_name(name)
      self.all.find do |magazine|
        if magazine.name == name
        end
      end
    end
  
    #Returns an array strings of the titles of all articles written for that magazine
  
    def article_titles
      Article.all.map do |article|
        if article.magazine.name == self.name
          article.title
        end
      end
    end
  
  
  #Returns an array of authors who have written more than 2 articles for the magazine
    def contributing_authors
      self.contributors.filter {|author| author.articles.length > 2}
    end
  
  
  end
  end
  