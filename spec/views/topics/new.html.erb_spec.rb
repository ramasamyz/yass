require 'spec_helper'

describe "topics/new" do
  before(:each) do
    assign(:topic, stub_model(Topic,
      :forum_id => 1,
      :user_id => 1,
      :title => "MyString",
      :hits => 1,
      :sticky => 1,
      :posts_count => "",
      :last_post_id => 1,
      :last_user_id => 1
    ).as_new_record)
  end

  it "renders new topic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => topics_path, :method => "post" do
      assert_select "input#topic_forum_id", :name => "topic[forum_id]"
      assert_select "input#topic_user_id", :name => "topic[user_id]"
      assert_select "input#topic_title", :name => "topic[title]"
      assert_select "input#topic_hits", :name => "topic[hits]"
      assert_select "input#topic_sticky", :name => "topic[sticky]"
      assert_select "input#topic_posts_count", :name => "topic[posts_count]"
      assert_select "input#topic_last_post_id", :name => "topic[last_post_id]"
      assert_select "input#topic_last_user_id", :name => "topic[last_user_id]"
    end
  end
end
