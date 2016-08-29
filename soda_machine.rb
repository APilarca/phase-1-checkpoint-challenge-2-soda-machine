class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
   return @sodas.length
  end

  def find_soda(soda_brand)
    if @sodas.brand == soda_brand
      return @sodas.soda_brand
    # else
    #   return nil
    end
  end

  def sell(soda_brand)
    @sodas.delete(soda_brand)
    @cash = soda_brand[:price]
  end

end
