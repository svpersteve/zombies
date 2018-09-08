class CreateZombies < ActiveRecord::Migration[5.2]
  def change
    create_table :zombies do |t|
      t.string :name
      t.string :bio

      t.timestamps null: false
    end
  end
end
