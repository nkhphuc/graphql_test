class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.string :author, null: false
      t.integer :written_year

      t.timestamps
    end
  end
end
