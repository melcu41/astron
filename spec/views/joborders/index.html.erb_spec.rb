require 'spec_helper'

describe "joborders/index" do
  before(:each) do
    assign(:joborders, [
      stub_model(Joborder,
        :joborderid => "Joborderid",
        :desc => "Desc",
        :customer_id => 1
      ),
      stub_model(Joborder,
        :joborderid => "Joborderid",
        :desc => "Desc",
        :customer_id => 1
      )
    ])
  end

  it "renders a list of joborders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Joborderid".to_s, :count => 2
    assert_select "tr>td", :text => "Desc".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
