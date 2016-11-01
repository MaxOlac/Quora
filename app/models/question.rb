class Question < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  # Remember to create a migration!
end
