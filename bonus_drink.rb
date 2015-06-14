class BonusDrink
  def self.total_count_for(amount)
    amount + omake_count_for(amount)
  end

  def self.omake_count_for(amount)
    omake, nokori = amount.divmod(3)
    consider = omake + nokori
    consider > 2 ? omake + omake_count_for(consider) : omake
  end
end
