class Field < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :parent, class_name: Field, foreign_key: :parent_id
end
