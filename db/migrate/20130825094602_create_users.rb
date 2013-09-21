class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.text :address
      t.string :mobile_phone

      t.timestamps
    end
  end
end
