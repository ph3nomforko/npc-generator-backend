class CreateNpcs < ActiveRecord::Migration[6.1]
  def change
    create_table :npcs do |t|
      t.string :name
      t.string :species
      t.string :alignment
      t.string :appearance
      t.string :strong_ability
      t.string :weak_ability
      t.string :behavior
      t.string :plot_key
      t.belongs_to :occupation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
