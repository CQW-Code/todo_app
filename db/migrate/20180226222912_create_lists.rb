class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :title
      t.string :author
      t.text :body

      t.timestamps
    end
  end
end
