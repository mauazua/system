class Field < ActiveRecord::Base
  validates :name, presence: true
end
