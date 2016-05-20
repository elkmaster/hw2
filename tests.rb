gem 'minitest'
require 'minitest/autorun'

require './task1'
require './task2'
require './task3'

class TestMeme < Minitest::Test
  def setup
    @t1 = Task1.new(5,5)
    @t2 = Task2.new({'yes' => 1, 'no' => 2, 'yest' => 3})
  end

  def test_t2
    assert_equal 2, @t2.run
  end

  def test_t2_symb_keys
    assert_equal ({:yest => 1, :no => 2, :yes => 3}) , @t2.symb_keys_run
  end


  def test_string_split
    assert_equal %w(Fizz|Buzz|Wizz Fizz|Buzz Fizz), 'Fizz|Buzz|Wizz'.splitToArray("|")
  end
end