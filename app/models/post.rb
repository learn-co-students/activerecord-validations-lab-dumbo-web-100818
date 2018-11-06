class Post < ActiveRecord::Base
  validate :title_includes?, on: [:create, :update]
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}

  def title_includes?
    checkers = ["Won't Believe", "Secret", "Top [number]", "Guess"]
    legit = []
    if self.title == nil
      errors.add(:title, 'Not a valid title')
    else
      checkers.each {|checker| legit << true if self.title.include?(checker)}
      errors.add(:title, 'Not a valid title') if !legit.include?(true)
    end
  end

end
