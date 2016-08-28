class PersonField < ActiveRecord::Base
  belongs_to :fieldable, polymorphic: true
  belongs_to :field

  validates :field, uniqueness: { scope: :fieldable }
  validates :field, presence: true
end
