class AddIndexToUserAttributes < ActiveRecord::Migration[6.1]
  def change
    add_index :users, :username
    add_index :users, :email
  end
end
