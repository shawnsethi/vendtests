object @test_case

attributes :product, :person, :machine, :door_position, :stock_method, :required_vengo_box, :coil_type, :bay, :arduino_version, :jiggle, :product_fold, :coil_position, :spin_type, :notes

child :test_results do
  attributes :quantity_remaining, :temperature, :spin_start_time, :spin_end_time, :drop_detected, :vend_rating, :condition_of_product, :notes
end