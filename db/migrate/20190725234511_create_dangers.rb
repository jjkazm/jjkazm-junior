class CreateDangers < ActiveRecord::Migration[5.2]
  def change
    create_table :dangers do |t|
      t.string :first
      t.string :last
      t.string :description

      t.timestamps
    end
  end
end
