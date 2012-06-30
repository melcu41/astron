require 'spec_helper'

describe "rates/index" do
  before(:each) do
    assign(:rates, [
      stub_model(Rate,
        :operatorname => "Operatorname",
        :operatorsymbol => "Operatorsymbol",
        :ratepercent => 1,
        :rateamt => 2
      ),
      stub_model(Rate,
        :operatorname => "Operatorname",
        :operatorsymbol => "Operatorsymbol",
        :ratepercent => 1,
        :rateamt => 2
      )
    ])
  end

  it "renders a list of rates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Operatorname".to_s, :count => 2
    assert_select "tr>td", :text => "Operatorsymbol".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
