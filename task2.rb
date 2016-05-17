class Task2
  def initialize()
    @hash = {'yes' => 23, 'b' => 'travel', 'yesterday' => 34, 5 => '234', :yesss => :fg, try: 30,
             key: 'some value', 'yesterday1' => 34, 'yesteryear' => 2014}
  end

  def run
    i=0
    @hash.each do |key, val|
      i+=1 if key.to_s.index('yes') == 0
    end
    puts "there are #{i} keys starts with 'yes'"
  end

  def symb_keys_run
    @keys = @hash.keys
    self.symb_keys(@keys.size-1)
    @hash
  end

  def symb_keys(i)
    if i>=0
      @hash[@keys[i].to_s.to_sym] = @hash.delete @keys[i-=1]
      symb_keys(i)
    end
  end
end