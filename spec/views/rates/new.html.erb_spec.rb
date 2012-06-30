require 'spec_helper'

describe "rates/new" do
  before(:each) do
    assign(:rate, stub_model(Rate,
      :operatorname => "MyString",
      :operatorsymbol => "MyString",
      :ratepercent => 1,
      :rateamt => 1
    ).as_new_record)
  end

  it "renders new rate form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rates_path, :method => "post" do
      assert_select "input#rate_operatorname", :name => "rate[operatorname]"
      assert_select "input#rate_operatorsymbol", :name => "rate[operatorsymbol]"
      assert_select "input#rate_ratepercent", :name => "rate[ratepercent]"
      assert_select "input#rate_rateamt", :name => "rate[rateamt]"
    end
  end
end
