require 'spec_helper'

describe "categories/show" do
  before(:each) do
    @category = assign(:category, stub_model(Category,
      :name => "Name",
      :desc => "Desc",
      :num1 => 1,
      :num2 => 2,
      :user1 => "User1",
      :user2 => "User2"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Desc/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/User1/)
    rendered.should match(/User2/)
  end
end
