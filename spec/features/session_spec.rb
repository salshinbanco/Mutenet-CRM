require 'spec_helper'  
  
describe 'ログイン' do  
  specify 'ユーザー認証成功' do  
    visit root_path  
    within('form#new_user') do  
      fill_in 'user[email]', with: 'task1010243@gmail.com'
      fill_in 'user[password]', with: 'password'
      check 'Remember me'
      click_button 'ログインする'
    end  
    expect(page).not_to have_css('form#new_user')  
  end  
  
  specify 'ユーザー認証失敗' do  
    visit root_path  
    within('form#new_user') do  
      fill_in 'user[email]', with: 'taro'  
      fill_in 'user[password]', with: 'wrong_password'  
      click_button 'ログインする'  
    end  
    expect(page).to have_css('p.alert', text: 'メールアドレスもしくはパスワードに誤りがあります')  
    expect(page).to have_css('form#new_user')  
  end  
end  