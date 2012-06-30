require 'spec_helper'

describe "units/new" do
  before(:each) do
    assign(:unit, stub_model(Unit,
      :unitname => "MyString",
      :unitsymbol => "MyString"
    ).as_new_record)
  end

  it "renders new unit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => units_path, :method => "post" do
      assert_select "input#unit_unitname", :name => "unit[unitname]"
      assert_select "input#unit_unitsymbol", :name => "unit[unitsymbol]"
    end
  end
end
