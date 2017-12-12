class CreateUserNovels < ActiveRecord::Migration
  def change
    create_table :user_novels do |t|
      t.references :user, index: true
      t.references :novel, index: true

      t.timestamps null: false
    end
    add_foreign_key :user_novels, :users
    add_foreign_key :user_novels, :novels
  end
end
