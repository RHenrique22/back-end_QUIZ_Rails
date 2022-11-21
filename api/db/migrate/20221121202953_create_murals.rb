class CreateMurals < ActiveRecord::Migration[6.1]
  def change
    create_table :murals do |t|
      t.string :mensagem
      t.integer :like
      t.integer :deslike
      t.integer :perfil, null: false

      t.timestamps
    end
  end
end
