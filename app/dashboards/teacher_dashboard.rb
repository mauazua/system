require "administrate/base_dashboard"

class TeacherDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    person_fields: Field::HasMany,
    fields: Field::HasMany,
    id: Field::Number,
    email: Field::String,
    first_name: Field::String,
    last_name: Field::String,
    full_name: Field::String,

  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :full_name,
    :email,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    # :person_fields,
    :fields,
    :id,
    :email,
    :first_name,
    :last_name,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :fields,
    :email,
    :first_name,
    :last_name,
  ].freeze

  # Overwrite this method to customize how teachers are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(teacher)
  #   "Teacher ##{teacher.id}"
  # end
end
