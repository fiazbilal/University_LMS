class ChangeUserStatusToInt < ActiveRecord::Migration[6.1]
  def up
    change_column :users, :status, :integer, default: 0
  end

  def down
    change_column :users, :status, :string 
  end
end
