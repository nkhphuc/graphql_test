class CreatePostContents < ActiveRecord::Migration[7.0]
  def change
    create_table :post_contents do |t|
      t.integer :part
      t.text :body, null: false
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
