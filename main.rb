require './task1'
require './task2'
require './task3'

# TASK 1
# t1 = Task1.new(5,5)
# puts t1.run

# TASK 1
 t2 = Task2.new({'yes' => 23, 'b' => 'travel', 'yesterday' => 34, 5 => '234', :yesss => :fg, try: 30,
 key: 'some value', 'yesterday1' => 34, 'yesteryear' => 2014})
# puts "#{t2.run} keys starts with 'yes'"

# TASK recursive keys to symbols
  puts t2.symb_keys_run

# TASK add new method to String class
# puts "Fizz|Buzz|Wizz".splitToArray("|").inspect

