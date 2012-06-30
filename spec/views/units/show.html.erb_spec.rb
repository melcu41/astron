require 'spec_helper'

describe "units/show" do
  before(:each) do
    @unit = assign(:unit, stub_model(Unit,
      :unitname => "Unitname",
      :unitsymbol => "Unitsymbol"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Unitname/)
    rendered.should match(/Unitsymbol/)
  end
end
