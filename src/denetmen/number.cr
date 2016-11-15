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

  # the number above n value validation
  def above?(n)
    self > n ? true : false
  end

  # the number below n value validation
  def below?(n)
    self < n ? true : false
  end
end
