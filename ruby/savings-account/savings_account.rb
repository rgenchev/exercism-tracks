module SavingsAccount
  def self.interest_rate(balance)
    if balance < 0
      -3.213
    elsif balance < 1000
      0.5
    elsif balance >= 1000 && balance < 5000
      1.621
    elsif balance >= 5000
      2.475
    end
  end

  def self.annual_balance_update(balance)
    annual_balance = Float(balance.abs + (balance.abs * (interest_rate(balance) / 100).abs))

    balance.positive? ? annual_balance : -annual_balance
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    updated_balance = current_balance
    years_counter = 0

    while updated_balance < desired_balance
      updated_balance = annual_balance_update(updated_balance)

      years_counter += 1
    end

    years_counter
  end
end
