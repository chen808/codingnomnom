class CreateContent2s < ActiveRecord::Migration
  def change
    create_table :content2s do |t|
		t.references :content, index: true
		t.string :video_link
		t.text :extra_info


		t.timestamps null: false
    end
    add_foreign_key :content2s, :contents
  end
end
