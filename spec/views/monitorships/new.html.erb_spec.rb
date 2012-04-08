require 'spec_helper'

describe "monitorships/new" do
  before(:each) do
    assign(:monitorship, stub_model(Monitorship,
      :user_id => 1,
      :topic_id => 1
    ).as_new_record)
  end

  it "renders new monitorship form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => monitorships_path, :method => "post" do
      assert_select "input#monitorship_user_id", :name => "monitorship[user_id]"
      assert_select "input#monitorship_topic_id", :name => "monitorship[topic_id]"
    end
  end
end
