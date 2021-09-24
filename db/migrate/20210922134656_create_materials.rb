class CreateMaterials < ActiveRecord::Migration[6.1]
  def change
    create_table :materials do |t|
      t.string :item_name
      t.references :type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
