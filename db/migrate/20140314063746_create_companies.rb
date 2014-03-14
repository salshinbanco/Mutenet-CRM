class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :company
      t.string :kana
      t.string :first_address_number
      t.string :second_address_number
      t.string :prefecture
      t.string :city
      t.string :town
      t.string :phone_number1
      t.string :phone_number2
      t.string :phone_number3
      t.string :fax_number1
      t.string :fax_number2
      t.string :fax_number3
      t.string :mail_address
      t.string :hp_url

      t.timestamps
    end
  end
end
