class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.float :weight
      t.float :height
      t.string :name
      t.string :account_number

      t.timestamps
    end
  end
end
