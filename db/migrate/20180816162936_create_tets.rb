class CreateTets < ActiveRecord::Migration[5.1]
  def change
    create_table :tets do |t|
      t.string :name

      t.timestamps
    end
  end
end
