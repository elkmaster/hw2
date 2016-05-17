class Task1
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
    puts "sum of negative elemets #{negativeSum}"
  end

end