class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.references :user, index: true
      t.references :teacher, index: true
      t.timestamps
    end
  end
end
