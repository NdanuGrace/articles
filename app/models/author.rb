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