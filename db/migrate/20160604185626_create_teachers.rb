class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
    end
    add_index :teachers, :email, unique: true
  end
end
