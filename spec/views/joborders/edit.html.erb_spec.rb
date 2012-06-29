require 'spec_helper'

describe "joborders/edit" do
  before(:each) do
    @joborder = assign(:joborder, stub_model(Joborder,
      :joborderid => "MyString",
      :desc => "MyString",
      :customer_id => 1
    ))
  end

  it "renders the edit joborder form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => joborders_path(@joborder), :method => "post" do
      assert_select "input#joborder_joborderid", :name => "joborder[joborderid]"
      assert_select "input#joborder_desc", :name => "joborder[desc]"
      assert_select "input#joborder_customer_id", :name => "joborder[customer_id]"
    end
  end
end
