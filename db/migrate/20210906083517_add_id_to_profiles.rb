class AddIdToProfiles < ActiveRecord::Migration[6.1]
  def change
    add_reference :profiles, :user #, :references
  end
end
