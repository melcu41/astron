require 'spec_helper'

describe "joborders/show" do
  before(:each) do
    @joborder = assign(:joborder, stub_model(Joborder,
      :joborderid => "Joborderid",
      :desc => "Desc",
      :customer_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Joborderid/)
    rendered.should match(/Desc/)
    rendered.should match(/1/)
  end
end
