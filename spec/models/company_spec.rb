require 'spec_helper'

describe Company do
  # pending "add some examples to (or delete) #{__FILE__}"
  specify "妥当なオブジェクト" do
  	company = Company.new(
  		company: 'ミュートネット',
  		kana:'ミュートネット',
  		first_address_number:'041',
  		first_address_number:'1112',
  		prefecture:'北海道',
  		city:'亀田郡七飯町鳴川',
  		town:'5丁目12-9',
  		phone_number1:'0138',
  		phone_number2:'66',
  		phone_number3:'2201',
  		fax_number1:'0138',
  		fax_number2:'66',
  		fax_number3:'2202',
  		mail_address:'mutenet@gmail.com',
  		hp_url:'http://www.mutenet.co.jp')
  	expect(company).to be_valid
  end

  specify "companyは空であってはならない" do
  	company = Company.new(
  		company: '',
  		kana:'ミュートネット',
  		first_address_number:'041',
  		first_address_number:'1112',
  		prefecture:'北海道',
  		city:'亀田郡七飯町鳴川',
  		town:'5丁目12-9',
  		phone_number1:'0138',
  		phone_number2:'66',
  		phone_number3:'2201',
  		fax_number1:'0138',
  		fax_number2:'66',
  		fax_number3:'2202',
  		mail_address:'mutenet@gmail.com',
  		hp_url:'http://www.mutenet.co.jp')
  	expect(company).not_to be_valid
  	expect(company.errors[:company]).to be_present
  end
end
