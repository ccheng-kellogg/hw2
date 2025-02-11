class AddActorIdToRoles < ActiveRecord::Migration[7.1]
  def change
    add_column :roles, :actor_id, :integer
  end
end
