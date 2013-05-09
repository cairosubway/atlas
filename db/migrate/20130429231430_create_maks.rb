class CreateMaks < ActiveRecord::Migration
  def change
    create_table :maks do |t|
      t.string :photoname
      t.string :photopath

      t.timestamps
    end
  end
end
