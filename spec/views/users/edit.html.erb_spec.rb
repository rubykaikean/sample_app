require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :name => "MyString",
      :age => 1,
      :address => "MyText",
      :mobile_phone => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_path(@user), "post" do
      assert_select "input#user_name[name=?]", "user[name]"
      assert_select "input#user_age[name=?]", "user[age]"
      assert_select "textarea#user_address[name=?]", "user[address]"
      assert_select "input#user_mobile_phone[name=?]", "user[mobile_phone]"
    end
  end
end
