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

  specify "kanaは漢字を含まない" do
  	company[:kana] = '株式会社'
  	expect(company).not_to be_valid
  	expect(company.errors[:kana]).to be_present
  end

  specify "kanaはカタカナのみ受け入れる" do
  	expect(company).to be_valid
  end

  specify "kanaに含まれるひらがなはカタカナに変換して受け入れる" do
  	company[:kana] = 'みゅーとねっと'
  	expect(company).to be_valid
  	expect(company[:kana]).to eq('ミュートネット')
  end
end
