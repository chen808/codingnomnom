class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :content, index: true
      t.integer :count_content

      t.timestamps null: false
    end
    add_foreign_key :likes, :contents
  end
end
