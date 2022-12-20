class CreateComentarios < ActiveRecord::Migration[6.1]
  def change
    create_table :comentarios do |t|
      t.string :mensagem
      t.integer :like
      t.integer :deslike
      t.references :comentario, null: true, foreign_key: true

      t.timestamps
    end
  end
end

