class ChangeForeignUserToOwnerInCostumes < ActiveRecord::Migration[7.1]
  def change
    remove_reference :costumes, :user, foreign_key: true
    add_reference :costumes, :owner, foreign_key: { to_table: :users }, null: false
  end
end
