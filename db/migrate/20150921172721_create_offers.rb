class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :author
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
