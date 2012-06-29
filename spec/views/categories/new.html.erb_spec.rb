require 'spec_helper'

describe "categories/new" do
  before(:each) do
    assign(:category, stub_model(Category,
      :name => "MyString",
      :desc => "MyString",
      :num1 => 1,
      :num2 => 1,
      :user1 => "MyString",
      :user2 => "MyString"
    ).as_new_record)
  end

  it "renders new category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => categories_path, :method => "post" do
      assert_select "input#category_name", :name => "category[name]"
      assert_select "input#category_desc", :name => "category[desc]"
      assert_select "input#category_num1", :name => "category[num1]"
      assert_select "input#category_num2", :name => "category[num2]"
      assert_select "input#category_user1", :name => "category[user1]"
      assert_select "input#category_user2", :name => "category[user2]"
    end
  end
end
