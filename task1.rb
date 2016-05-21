class Task1
  attr_accessor :arr
  def initialize(w, h)
    @arr = Array.new(h){ Array.new(w){ rand(-10..10) } }
  end

  def run
    negativeSum = 0
    @arr.map do |subArr|
      subArr.map do |item|
        if item<0
          negativeSum+=item
        end
      end
    end
    puts @arr.inspect
    "sum of negative elemets #{negativeSum}"
    negativeSum
  end

end