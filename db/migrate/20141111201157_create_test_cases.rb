class CreateTestCases < ActiveRecord::Migration
  def change
    create_table :test_cases do |t|
      t.text :product
      t.text :person
      t.text :machine
      t.text :door_position
      t.text :stock_method
      t.text :stock_method
      t.boolean :required_vengo_box
      t.integer :coil_type
      t.integer :bay
      t.text :arduino_version
      t.boolean :jiggle
      t.boolean :product_fold
      t.text :coil_position
      t.text :spin_type
      t.text :notes

      t.timestamps
    end
  end
end
