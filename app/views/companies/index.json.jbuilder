json.array!(@companies) do |company|
  json.extract! company, :id, :company, :kana, :first_address_number, :second_address_number, :prefecture, :city, :town, :phone_number1, :phone_number2, :phone_number3, :fax_number1, :fax_number2, :fax_number3, :mail_address, :hp_url
  json.url company_url(company, format: :json)
end
