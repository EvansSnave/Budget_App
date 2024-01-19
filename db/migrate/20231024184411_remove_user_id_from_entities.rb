class RemoveUserIdFromEntities < ActiveRecord::Migration[7.0]
  def change
    remove_column :entities, :user_id, :bigint
  end
end
