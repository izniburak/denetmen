abstract struct Number
  # the positive number validation
  def positive?
    self.sign === 1
  end

  # the negative number validation
  def negative?
    self.sign === -1
  end

  # the number equals zero validation
  def zero?
    self.sign === 0
  end

  # the number divisibility (n) validation
  def div?(n)
    self.divmod(n)[1] === 0
  end
end
