require 'spec_helper'

describe "rates/edit" do
  before(:each) do
    @rate = assign(:rate, stub_model(Rate,
      :operatorname => "MyString",
      :operatorsymbol => "MyString",
      :ratepercent => 1,
      :rateamt => 1
    ))
  end

  it "renders the edit rate form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rates_path(@rate), :method => "post" do
      assert_select "input#rate_operatorname", :name => "rate[operatorname]"
      assert_select "input#rate_operatorsymbol", :name => "rate[operatorsymbol]"
      assert_select "input#rate_ratepercent", :name => "rate[ratepercent]"
      assert_select "input#rate_rateamt", :name => "rate[rateamt]"
    end
  end
end
