class PersonField < ActiveRecord::Base
  belongs_to :fieldable, polymorphic: true
  belongs_to :field
end
