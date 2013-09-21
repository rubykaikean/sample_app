require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :name => "Name",
        :age => 1,
        :address => "MyText",
        :mobile_phone => "Mobile Phone"
      ),
      stub_model(User,
        :name => "Name",
        :age => 1,
        :address => "MyText",
        :mobile_phone => "Mobile Phone"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile Phone".to_s, :count => 2
  end
end
