class Article < ActiveRecord::Base

  #add validations to make sure certain params are part of it
  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :description, presence: true, length: {minimum: 10, maximum: 300}
end
