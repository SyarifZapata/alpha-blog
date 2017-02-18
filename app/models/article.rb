#it gave the columns its getter and setter
#Validates means it can only be saved if title is not empty
#Or we can Validates the data with any other condition.

class Article < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :description, presence: true, length: {minimum: 10, maximum: 300}
  validates :user_id, presence: true

end

