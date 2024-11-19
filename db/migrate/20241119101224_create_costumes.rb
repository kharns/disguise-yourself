class CreateCostumes < ActiveRecord::Migration[7.1]
  def change
    create_table :costumes do |t|
      t.string :photo_url
      t.string :title
      t.string :description
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
