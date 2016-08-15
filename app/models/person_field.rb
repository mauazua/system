class PersonField < ActiveRecord::Base
  belongs_to :fieldable, polymorphic: true
  belongs_to :field

  validates :field, uniqueness: { scope: :fieldable }
end
