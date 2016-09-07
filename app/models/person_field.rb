class PersonField < ActiveRecord::Base
  belongs_to :fieldable, polymorphic: true
  belongs_to :field

  validates :field, uniqueness: { scope: [:fieldable_type, :fieldable_id] }
  validates :field, presence: true
end
