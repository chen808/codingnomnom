class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.references :user, index: true
      t.string :language
      t.string :title
      t.text :step1
      t.text :step2
      t.text :step3
      t.text :step4
      t.text :step5
      t.text :step6
      t.text :step7
      t.text :step8
      t.text :step9
      t.text :step10
      t.text :step11
      t.text :step12
      t.text :step13
      t.text :step14
      t.text :step15
      t.text :step16
      t.text :step17
      t.text :step18
      t.text :step19
      t.text :step20


      t.timestamps null: false
    end
    add_foreign_key :contents, :users
  end
end
