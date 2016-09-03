class AddTaxonomyToFields < ActiveRecord::Migration
  def change
    add_reference :fields, :taxonomy, index: true
  end
end
