require 'pry'
class Author 
  attr_accessor :name, :posts
  @@post_count = 1
  
  
  def initialize(name)
    @name = name
    @posts = []
  end 
  
  
  
  def add_post(title)
    self.posts << title
    #binding.pry
    title.author = self
    @@post_count += 1
  end
  
  
  def add_post_by_title(title) 
    post = Post.new(title)
    post.author = self
    #binding.pry
    self.posts.push(post)
    post.author = self
    @@post_count += 1
    #binding.pry
  end 
  
  def self.post_count
    @@post_count
  end 
  
  def posts 
    @posts
  end 
  
 
  
  
end 