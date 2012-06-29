require 'spec_helper'

describe "customers/show" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :name => "Name",
      :address => "Address",
      :contactno => "Contactno",
      :contactperson => "Contactperson",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Address/)
    rendered.should match(/Contactno/)
    rendered.should match(/Contactperson/)
    rendered.should match(/Email/)
  end
end
