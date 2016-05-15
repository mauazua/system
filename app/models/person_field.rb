class PersonField < ActiveRecord::Base
  belongs_to :fieldable
  belongs_to :field
end
