require 'spec_helper'

describe "rates/show" do
  before(:each) do
    @rate = assign(:rate, stub_model(Rate,
      :operatorname => "Operatorname",
      :operatorsymbol => "Operatorsymbol",
      :ratepercent => 1,
      :rateamt => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Operatorname/)
    rendered.should match(/Operatorsymbol/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
