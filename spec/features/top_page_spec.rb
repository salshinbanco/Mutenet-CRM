require 'spec_helper'  
  
describe 'トップページ' do  
  specify 'ログインフォームを表示' do  
    visit root_path  
    expect(page).to have_css('h2',text:'ログインフォーム')
    expect(page).to have_css('h2',text:'ログインフォーム')
    expect(page).to have_css('h2',text:'ログインフォーム')
  end
end 