require 'spec_helper'

describe "customers/new" do
  before(:each) do
    assign(:customer, stub_model(Customer,
      :name => "MyString",
      :address => "MyString",
      :contactno => "MyString",
      :contactperson => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => customers_path, :method => "post" do
      assert_select "input#customer_name", :name => "customer[name]"
      assert_select "input#customer_address", :name => "customer[address]"
      assert_select "input#customer_contactno", :name => "customer[contactno]"
      assert_select "input#customer_contactperson", :name => "customer[contactperson]"
      assert_select "input#customer_email", :name => "customer[email]"
    end
  end
end
