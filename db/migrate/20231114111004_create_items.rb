class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|

      t.timestamps
      t.references :user,               null: false, foreign_key: true
      t.string     :name,               null: false
      t.text       :description,        null: false
      t.integer    :category_id,        null: false
      t.integer    :status_id,          null: false
      t.integer    :shipping_charge_id, null: false
      t.integer    :shipping_days_id,   null: false
      t.integer    :prefecture_id,      null: false
      t.integer    :price,              null: false
    end
  end
end
