class AddUserIdToTweets < ActiveRecord::Migration[6.1]
  def change
    add_belongs_to :tweets, :user
  end
end
