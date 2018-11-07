class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates_inclusion_of :category, :in => ["Fiction", "Non-Fiction"], :allow_nil => false

  # def validate(post)
  #   if post.title.include?("Guess")
  #     true
  #   elsif post.title.include?("Won't Believe")
  #     true
  #   elsif post.title.include?("Secret")
  #     true
  #   elsif post.title.include?("Top")
  #     true
  #   else
  #     false
  #   end
  # end

end
