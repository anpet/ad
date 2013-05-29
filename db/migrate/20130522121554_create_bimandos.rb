class CreateBimandos < ActiveRecord::Migration
  def change
    create_table :bimandos do |t|
      t.string :name
      t.integer :height
      t.integer :weight
      t.integer :stdweight
      t.integer :bimando
      t.string :state

      t.timestamps
    end
  end
end
