require 'spec_helper'

describe "categories/index" do
  before(:each) do
    assign(:categories, [
      stub_model(Category,
        :name => "Name",
        :desc => "Desc",
        :num1 => 1,
        :num2 => 2,
        :user1 => "User1",
        :user2 => "User2"
      ),
      stub_model(Category,
        :name => "Name",
        :desc => "Desc",
        :num1 => 1,
        :num2 => 2,
        :user1 => "User1",
        :user2 => "User2"
      )
    ])
  end

  it "renders a list of categories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Desc".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "User1".to_s, :count => 2
    assert_select "tr>td", :text => "User2".to_s, :count => 2
  end
end
