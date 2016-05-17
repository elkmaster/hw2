class String
  def splitToArray(sep="::")
    arr = self.split(sep)
    res = [self]
    while arr.count != 1
      arr = arr.reverse.drop(1).reverse
      res.push(arr.join(sep))
    end
    res
  end
end