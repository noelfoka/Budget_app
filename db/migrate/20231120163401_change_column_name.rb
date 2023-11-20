class ChangeColumnName < ActiveRecord::Migration[7.1]
  def change
    rename_column :expenses, :user_id, :author_id
  end
end
