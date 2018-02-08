require 'test_helper'
require_relative 'person'

class Activerecord::HatTest < Minitest::Test
  def setup
    I18n.load_path = ["#{Dir.pwd}/test/activerecord/en.yml"]
  end

  def test_that_it_has_a_version_number
    refute_nil ::Activerecord::Hat::VERSION
  end

  def test_respond_to
    person = Person.first
    assert_respond_to person, :hat
    assert_equal person.hat(:name), 'My name'
  end
end
