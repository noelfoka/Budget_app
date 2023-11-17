class CreateTranGroups < ActiveRecord::Migration[7.1]
  def change
    create_table :tran_groups do |t|
      t.string :name
      t.string :icon
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
