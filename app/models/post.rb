class Post < ActiveRecord::Base
  validates :body, presence: true, length: { maximum: 500 }
end
