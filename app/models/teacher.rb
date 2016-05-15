class Teacher < ActiveRecord::Base
  has_many :person_fields, as: :fieldable
end
