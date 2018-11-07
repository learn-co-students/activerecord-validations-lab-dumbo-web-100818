class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates_inclusion_of :category, :in => ["Fiction", "Non-Fiction"], :allow_nil => false
  validate :hello_there

  def hello_there
    valid = ["Guess", "Won't Believe", "Secret", "Top"].map {|text| self.title.to_s.include?(text)}
    if valid.uniq.length > 1
      true
      errors.add(:title, "must be clickbait")
    
end
