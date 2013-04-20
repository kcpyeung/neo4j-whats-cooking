class Kitchen
  def initialize(kitchen_stock)
    @stock = kitchen_stock
  end

  def whats_cooking
    candidate_dishes.keep_if {|dish| dish.can_be_cooked_with?(@stock)}.map {|dish| dish.name}
  end

  def stock_up(ingredient, gram)
    @stock << {:ingredient => ingredient, :weight => gram}
  end

  private

  def candidate_dishes
    @stock.reduce([]) {|array, stock| array << stock[:ingredient].dishes}.flatten.uniq {|dish| dish.name}
  end
end