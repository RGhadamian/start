class RenameProviderToProviderId < ActiveRecord::Migration[6.0]
  def change
    rename_column :reviews, :provider, :provider_id
  end
end
