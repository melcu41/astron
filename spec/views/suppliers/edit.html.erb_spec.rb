require 'spec_helper'

describe "suppliers/edit" do
  before(:each) do
    @supplier = assign(:supplier, stub_model(Supplier,
      :name => "MyString",
      :address => "MyString",
      :contactno => "MyString",
      :contactperson => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit supplier form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => suppliers_path(@supplier), :method => "post" do
      assert_select "input#supplier_name", :name => "supplier[name]"
      assert_select "input#supplier_address", :name => "supplier[address]"
      assert_select "input#supplier_contactno", :name => "supplier[contactno]"
      assert_select "input#supplier_contactperson", :name => "supplier[contactperson]"
      assert_select "input#supplier_email", :name => "supplier[email]"
    end
  end
end
