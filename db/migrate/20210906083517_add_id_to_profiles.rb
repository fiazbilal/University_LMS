class AddIdToProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :user, :refrences
  end
end
