module MoneyConverterHelper
  def convert_currency(price)
    price.to_f / 100
  end

  def cent_to_euro(price)
    (price.to_f * 100).to_i
  end
end
