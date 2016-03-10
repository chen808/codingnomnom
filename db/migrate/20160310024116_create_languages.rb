class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.references :content, index: true
      t.string :lang

      t.timestamps null: false
    end
    add_foreign_key :languages, :contents
  end
end
