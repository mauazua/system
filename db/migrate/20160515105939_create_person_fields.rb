class CreatePersonFields < ActiveRecord::Migration
  def change
    create_table :person_fields do |t|
      t.references :fieldable, polymorphic: true, index: true
      t.references :field, index: true
    end
  end
end
