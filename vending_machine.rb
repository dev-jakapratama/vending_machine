class VendingMachine
  def initialize
    @inventory = Inventory.new
    @money_handler = MoneyHandler.new(0) 
    @selected_product = nil
    @total_cost = nil
    @product_price = nil
    @quantity_product = nil
  end

  def select_product(product_name)
    @selected_product = product_name
  end

  def add_qty_product(quantity)
    @quantity_product = quantity
  end

  def add_amount_product(amount)
    @product_price = amount
  end

  def insert_money(amount)
    @money_handler.insert_money(amount)
  end

  def purchase(product_name, quantity)
    if @selected_product 
      total_cost = @product_price * @quantity_product
      @inventory.remove_product(product_name)
      return "You purchased #{@quantity_product} of #{product_name}(s) for a total cost of $#{total_cost}."
    else
      return "Insufficient funds or product not selected."
    end

  end
end