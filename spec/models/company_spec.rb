require 'spec_helper'

describe Company do
  # pending "add some examples to (or delete) #{__FILE__}"
  let(:company){ FactoryGirl.build(:company)}

  specify "妥当なオブジェクト" do
  	expect(company).to be_valid
  end

  specify "companyは空であってはならない" do
  	company[:company] = ''
  	expect(company).not_to be_valid
  	expect(company.errors[:company]).to be_present
  end
end
