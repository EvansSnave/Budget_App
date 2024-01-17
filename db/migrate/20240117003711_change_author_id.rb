class ChangeAuthorId < ActiveRecord::Migration[7.1]
  def change
    rename_column :users, :id, :author_id
  end
end
