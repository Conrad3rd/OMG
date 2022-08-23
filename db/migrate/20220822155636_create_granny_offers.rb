class CreateGrannyOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :granny_offers do |t|
      t.integer :hug_amount
      t.boolean :available
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
