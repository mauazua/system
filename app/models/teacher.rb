class Teacher < ActiveRecord::Base
  has_many :person_fields, as: :fieldable
  has_many :fields, through: :person_fields
end
