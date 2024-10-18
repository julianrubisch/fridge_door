require "test_helper"
require "generators/phlex_controller/phlex_controller_generator"

class PhlexControllerGeneratorTest < Rails::Generators::TestCase
  tests PhlexControllerGenerator
  destination Rails.root.join("tmp/generators")
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
