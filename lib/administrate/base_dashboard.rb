require "administrate/field/belongs_to"
require "administrate/field/boolean"
require "administrate/field/date_time"
require "administrate/field/email"
require "administrate/field/has_many"
require "administrate/field/has_one"
require "administrate/field/number"
require "administrate/field/polymorphic"
require "administrate/field/select"
require "administrate/field/string"
require "administrate/field/text"

module Administrate
  class BaseDashboard
    include Administrate

    def attribute_types
      self.class::ATTRIBUTE_TYPES
    end

    def attribute_type_for(attribute_name)
      attribute_types.fetch(attribute_name) do
        fail attribute_not_found_message(attribute_name)
      end
    end

    def attribute_types_for(attribute_names)
      attribute_names.each_with_object({}) do |name, attributes|
        attributes[name] = attribute_type_for(name)
      end
    end

    def form_attributes
      self.class::FORM_ATTRIBUTES
    end

    def permitted_attributes
      form_attributes.map do |attr|
        attribute_types[attr].permitted_attribute(attr)
      end.uniq
    end

    def show_page_attributes
      self.class::SHOW_PAGE_ATTRIBUTES
    end

    def collection_attributes
      self.class::COLLECTION_ATTRIBUTES
    end

    def display_resource(resource)
      # binding.pry
      resource_name = I18n.t(resource.class.name.parameterize) + ' '
      if resource.try(:full_name).present?
        resource_name = resource.full_name
      elsif resource.try(:email).present?
        resource_name += resource.email
      elsif resource.try(:name).present?
        resource_name += resource.name
      else
        resource_name += "##{resource.id}"
      end
      resource_name
    end

    private

    def attribute_not_found_message(attr)
      "Attribute #{attr} could not be found in #{self.class}::ATTRIBUTE_TYPES"
    end
  end
end
