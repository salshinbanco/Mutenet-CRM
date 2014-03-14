require 'test_helper'

class CompaniesControllerTest < ActionController::TestCase
  setup do
    @company = companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company" do
    assert_difference('Company.count') do
      post :create, company: { city: @company.city, company: @company.company, fax_number1: @company.fax_number1, fax_number2: @company.fax_number2, fax_number3: @company.fax_number3, first_address_number: @company.first_address_number, hp_url: @company.hp_url, kana: @company.kana, mail_address: @company.mail_address, phone_number1: @company.phone_number1, phone_number2: @company.phone_number2, phone_number3: @company.phone_number3, prefecture: @company.prefecture, second_address_number: @company.second_address_number, town: @company.town }
    end

    assert_redirected_to company_path(assigns(:company))
  end

  test "should show company" do
    get :show, id: @company
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @company
    assert_response :success
  end

  test "should update company" do
    patch :update, id: @company, company: { city: @company.city, company: @company.company, fax_number1: @company.fax_number1, fax_number2: @company.fax_number2, fax_number3: @company.fax_number3, first_address_number: @company.first_address_number, hp_url: @company.hp_url, kana: @company.kana, mail_address: @company.mail_address, phone_number1: @company.phone_number1, phone_number2: @company.phone_number2, phone_number3: @company.phone_number3, prefecture: @company.prefecture, second_address_number: @company.second_address_number, town: @company.town }
    assert_redirected_to company_path(assigns(:company))
  end

  test "should destroy company" do
    assert_difference('Company.count', -1) do
      delete :destroy, id: @company
    end

    assert_redirected_to companies_path
  end
end
