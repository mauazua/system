class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :person_fields, as: :fieldable
  has_many :fields, through: :person_fields

  has_one :choice
end
