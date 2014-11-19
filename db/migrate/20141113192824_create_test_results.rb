class CreateTestResults < ActiveRecord::Migration
  def change
    create_table :test_results do |t|
      t.integer :quantity_remaining
      t.integer :temperature
      t.datetime :spin_start_time
      t.datetime :spin_end_time
      t.boolean :drop_detected
      t.integer :vend_rating
      t.integer :condition_of_product
      t.text :notes
      t.references :test_case

      t.timestamps
    end
    add_index :test_results, :test_case_id
  end
end
