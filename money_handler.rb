class MoneyHandler
  attr_accessor :balance

  def initialize(amount = 0 )
     @balance = amount
  end

  def draw_money(amount)
    
  end

  def insert_money(amount)
    @balance += amount  
  end

  def deduct_money(amount)
    @balance -= amount 
  end
end