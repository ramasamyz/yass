require 'spec_helper'

describe "monitorships/edit" do
  before(:each) do
    @monitorship = assign(:monitorship, stub_model(Monitorship,
      :user_id => 1,
      :topic_id => 1
    ))
  end

  it "renders the edit monitorship form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => monitorships_path(@monitorship), :method => "post" do
      assert_select "input#monitorship_user_id", :name => "monitorship[user_id]"
      assert_select "input#monitorship_topic_id", :name => "monitorship[topic_id]"
    end
  end
end
