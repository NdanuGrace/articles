# article
class Article
  attr_reader :author, :magazine, :title
  
  @@all = []
      def initialize(author, magazine, title)
          @author = author
          @magazine = magazine
          @title = title
          @@all << self
      end
  
  
      def self.all
          @@all
      end
  
  end
  
# author
  require_relative "./article.rb"

class Author
  attr_reader :name


  def initialize(name)
    @name = name
  
  end

  def name
    @name
  end
# Returns an array of Article instances the author has written

  def articles
    Article.all.filter do |article|
      article.author.name == self.name
    end
  end

#Returns a **unique** array of Magazine instances for which the author has contributed to

  def magazines
    @magazines = Article.all.filter do |article|
      article.author.name == self.name
    end.map do |filtered_magazine|
      filtered_magazine.magazine
    end
    @magazines.uniq
  end

  #Given a magazine (as Magazine instance) and a title (as a string), 
  #creates a new Article instance and associates it with that author and that magazine.

  def add_article(magazine, title)

    Article.new(self, magazine, title)
  end

  #Returns a **unique** array of strings with the categories 
  #of the magazines the author has contributed to

  def topic_areas
    @topics = Article.all.filter do |article|
      article.author.name == self.name
      end.map do |new_article|
        new_article.magazine.category
      end
    @topics.uniq
  end
  

end


# magazine

require_relative "./article.rb"


class Magazine
  attr_writer :name, :category

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

#Returns an array of Author instances who have written for this magazine

  def contributors
    Article.all.filter do |article|
    article.magazine.name == self.name
    end.map do |each_contributor|
      each_contributor.author
    end
  end

  #Given a string of magazine's name, this method returns the first magazine object that matches

  def self.find_by_name(name)
    self.all.find do |mag|
      mag.name == name
    end
  end

  #Returns an array strings of the titles of all articles written for that magazine

  def article_titles
    Article.all.filter do |article|
      article.magazine.name == self.name
    end.map do |filtered_article|
      filtered_article.title
    end
  end
#Returns an array of authors who have written more than 2 articles for the magazine
  def contributing_authors
    self.contributors.filter do |author|
       author.articles.length > 2
    end
  end


end