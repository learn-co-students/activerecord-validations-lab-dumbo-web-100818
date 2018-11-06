class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: {in: %w(Fiction Non-Fiction)}

  validate :validate_in?
end



  def validate_in?
    unless title.in? ["Won't Believe", "Secret", "Top", "Guess"]
      errors[:title] << 'Need a valid title please!'
    end
  end
