class CreatePhotoids < ActiveRecord::Migration
  def change
      #drop_table :photoids    
      create_table :photoids do |t|
      t.string :photoname
      t.string :photopath

      t.timestamps
    end
  end
end
