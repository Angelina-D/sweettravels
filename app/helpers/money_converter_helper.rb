module MoneyConverterHelper
  def convert_currency(price)
    price.to_f / 100
  end
end
