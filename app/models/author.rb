class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :phone_number, length: { is: 10 }
end


# 
# CLICKBAIT_PATTERNS = [/Won't Believe/i, /Secret/i, /Top[0-9]*/i, /Guess/i
# ]
#
# def is_clickbait?
#   if CLICKBAIT_PATTERNS.none? {|pat| pat.match title}
#     errors.add(:title, "must be clickbait")
#
#   end
#
# end
