class AddProviderToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :provider, :string
  end
end
