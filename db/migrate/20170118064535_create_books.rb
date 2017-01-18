class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :category_id
      t.integer :author_id
      t.integer :publisher_id
      t.string :isbn
      t.text :excerpt
      t.integer :pages
      t.string :price
      t.string :buy
      t.string :format

      t.timestamps
    end
  end
end
