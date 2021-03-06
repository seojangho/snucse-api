class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name, null: false
      t.integer :creator_id
      t.boolean :active, default: true

      t.timestamps null: false
    end
    add_index :tags, :name, unique: true
  end
end
