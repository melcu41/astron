require 'spec_helper'

describe "units/index" do
  before(:each) do
    assign(:units, [
      stub_model(Unit,
        :unitname => "Unitname",
        :unitsymbol => "Unitsymbol"
      ),
      stub_model(Unit,
        :unitname => "Unitname",
        :unitsymbol => "Unitsymbol"
      )
    ])
  end

  it "renders a list of units" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Unitname".to_s, :count => 2
    assert_select "tr>td", :text => "Unitsymbol".to_s, :count => 2
  end
end
