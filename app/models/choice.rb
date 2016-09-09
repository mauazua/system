class Choice < ActiveRecord::Base
  belongs_to :user
  belongs_to :teacher  

  validates :user, uniqueness: true
end
