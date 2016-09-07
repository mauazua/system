class AddScoreToPersonFields < ActiveRecord::Migration
  def change
    add_column :person_fields, :score, :integer, default: 0
  end
end
