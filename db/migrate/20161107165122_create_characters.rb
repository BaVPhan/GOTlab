class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t. string :title
      t. string :img_url
      t. string :current_house
      t.timestamps null: false
    end
  end
end
