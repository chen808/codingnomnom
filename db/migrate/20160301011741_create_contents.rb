class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.references :user, index: true
      t.references :language
      t.string :title
      t.text :description
      t.string :step1
      t.string :step2
      t.string :step3
      t.string :step4
      t.string :step5
      t.string :step6
      t.string :step7
      t.string :step8
      t.string :step9
      t.string :step10



      t.timestamps null: false
    end
    add_foreign_key :contents, :users
  end
end
