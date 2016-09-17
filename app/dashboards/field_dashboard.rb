require "administrate/base_dashboard"

class FieldDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    parent: Field::BelongsTo.with_options(class_name: "Field"),
    taxonomy: Field::BelongsTo,
    id: Field::Number,
    name: Field::String,
    parent_id: Field::Number,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :parent,
    :taxonomy,
    :id,
    :name,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :parent,
    :taxonomy,
    # :id,
    :name,
    # :parent_id,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :parent,
    # :taxonomy,
    :name,
    :parent_id,
  ].freeze

  # Overwrite this method to customize how fields are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(field)
  #   "Field ##{field.id}"
  # end
end