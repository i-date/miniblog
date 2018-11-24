class AddUserIdToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :user_id, :bigint, null: false
  end
end
