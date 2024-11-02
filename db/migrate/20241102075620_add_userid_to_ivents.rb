class AddUseridToIvents < ActiveRecord::Migration[7.2]
  def change
    add_column :ivents, :user_id, :integer
  end
end
