class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :link
      t.text :description
      t.string :title
      t.string :icon
      t.text :content

      t.timestamps null: false
    end
  end
end
