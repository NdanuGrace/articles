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
       author.articles.count > 2
    end
  end


end
