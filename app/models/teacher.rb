class Teacher < ActiveRecord::Base
  include Person

  has_many :person_fields, as: :fieldable
  has_many :fields, through: :person_fields
  #
  # def full_name
  #   [first_name, last_name].join(' ')
  # end
end
