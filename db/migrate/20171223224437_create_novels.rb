class CreateNovels < ActiveRecord::Migration
  def change
    create_table :novels do |t|
      t.string :titulo
      t.string :genero
      t.integer :temporada

      t.timestamps null: false
    end
  end
end
