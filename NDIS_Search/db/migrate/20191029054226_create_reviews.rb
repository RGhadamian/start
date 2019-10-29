class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :timely
      t.string :safe
      t.string :clear_communication
      t.string :value
      t.string :recommend

      t.timestamps
    end
  end
end
