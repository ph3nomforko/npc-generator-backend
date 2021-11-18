class AddClassToNpcs < ActiveRecord::Migration[6.1]
  def change
    add_column :npcs, :npc_class, :string
  end
end
