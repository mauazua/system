class AddParentIdToFields < ActiveRecord::Migration
  def change
    add_column :fields, :parent_id, :integer, index: true
  end
end
