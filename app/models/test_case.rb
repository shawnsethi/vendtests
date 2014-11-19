class TestCase < ActiveRecord::Base
  has_many :test_results, dependent: :destroy
end
