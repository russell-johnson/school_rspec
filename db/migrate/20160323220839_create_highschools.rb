class CreateHighschools < ActiveRecord::Migration
  def change
    create_table :highschools do |t|
      t.string :name
      t.integer :established

      t.timestamps null: false
    end
  end
end
