class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :member
      t.string :licencenum
      t.date :licenceto
      t.date :licencefrom
      t.references :leader

      t.timestamps
    end
    add_index :cars, :leader_id
  end
end
