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
