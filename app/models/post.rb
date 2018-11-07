require 'pry'
class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates_inclusion_of :category, :in => ["Fiction", "Non-Fiction"], :allow_nil => false
  validate :hello_there

  def hello_there
    valid = ["Guess", "Won't Believe", "Secret", "Top"].map {|title| self.title.to_s.include?(title)}
    if valid.uniq.length > 1
      true
    else
      errors.add(:title, "must be clickbait")
    end
    # if self.title.include?("Guess")
    #
    # elsif self.title.include?("Won't Believe")
    #
    # elsif self.title.include?("Secret")
    #
    # elsif self.title.include?("Top")
    #
    # else
    #
    # end
  end


  #validates :title, inclusion: "Won't Believe" || "Secret" || "Top" || "Guess"


end
