class Field < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :parent, class_name: Field, foreign_key: :parent_id
  belongs_to :taxonomy, class_name: 'Taxonomy', inverse_of: :fields
end
