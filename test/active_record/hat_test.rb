require 'test_helper'
require_relative 'person'

class ActiveRecord::HatTest < Minitest::Test
  def setup
    I18n.load_path = ["#{Dir.pwd}/test/active_record/en.yml"]
  end

  def test_that_it_has_a_version_number
    refute_nil ::ActiveRecord::Hat::VERSION
  end

  def test_respond_to
    person = Person.first
    assert_respond_to person, :hat
    assert_equal person.hat(:name), 'My name'
  end
end
