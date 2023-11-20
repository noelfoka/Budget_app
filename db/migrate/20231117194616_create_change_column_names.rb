class CreateChangeColumnNames < ActiveRecord::Migration[7.1]
  def change
    rename_column :details, :user_id, :author_id
  end
end
