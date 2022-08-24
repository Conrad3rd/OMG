class AddColumnsToGrannyOffers < ActiveRecord::Migration[7.0]
  def change
    add_column :granny_offers, :details, :text
    add_column :granny_offers, :additional, :string
  end
end
