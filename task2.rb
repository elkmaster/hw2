class Task2
  def initialize(h)
    @hash = h
  end

  def run
    i=0
    @hash.each do |key, val|
      i+=1 if key.to_s.index('yes') == 0
    end
    i
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