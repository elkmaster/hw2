gem 'minitest'
require 'minitest/autorun'

require './task1'
require './task2'
require './task3'

class TestMeme < Minitest::Test
  def setup
    @t2 = Task2.new({'yes' => 23, 'b' => 'travel', 'yesterday' => 34})
  end

  def test_t1
    t1 = Task1.new(3, 3)
    t1.instance_variable_set("@arr", [[9, 6, -10], [-4, -2, -4], [1, 1, 0]])
    assert_equal(-20, t1.run)
  end

  def test_t2
    assert_equal 2, @t2.run
  end

  def test_t2_symb_keys
    assert_equal ({:yes=>23, :b=>"travel", :yesterday=>34}), @t2.symb_keys_run
  end

  def test_string_split
    assert_equal %w(Fizz|Buzz|Wizz Fizz|Buzz Fizz), 'Fizz|Buzz|Wizz'.splitToArray("|")
  end
end