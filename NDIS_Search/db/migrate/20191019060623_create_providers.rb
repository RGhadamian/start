class CreateProviders < ActiveRecord::Migration[6.0]
  def change
    create_table :providers do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :website
      t.string :address
      t.string :postcode
      t.string :logo

      t.timestamps
    end
  end
end
