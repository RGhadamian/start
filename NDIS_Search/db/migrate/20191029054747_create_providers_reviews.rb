class CreateProvidersReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :providers_reviews, id: false do |t|
      t.belongs_to :provider, index: true
      t.belongs_to :review, index: true
    end
  end
end