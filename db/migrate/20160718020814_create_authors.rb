class CreateAuthors < ActiveRecord::Migration
  def up
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.string :genre
      t.integer :birth_year
      t.integer :death_year

      t.timestamps
    end
  end

  def down
    remove_table :authors
  end
end
