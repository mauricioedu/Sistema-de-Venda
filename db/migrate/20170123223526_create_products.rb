class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :nome
      t.float :preco
      t.string :image

      t.timestamps null: false
    end
  end
end
