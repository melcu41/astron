require 'spec_helper'

describe "customers/index" do
  before(:each) do
    assign(:customers, [
      stub_model(Customer,
        :name => "Name",
        :address => "Address",
        :contactno => "Contactno",
        :contactperson => "Contactperson",
        :email => "Email"
      ),
      stub_model(Customer,
        :name => "Name",
        :address => "Address",
        :contactno => "Contactno",
        :contactperson => "Contactperson",
        :email => "Email"
      )
    ])
  end

  it "renders a list of customers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Contactno".to_s, :count => 2
    assert_select "tr>td", :text => "Contactperson".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
