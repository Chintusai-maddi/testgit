class AddUserIdToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :chintus, :user_id, :integer
  end
end
