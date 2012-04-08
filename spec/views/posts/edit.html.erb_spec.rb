require 'spec_helper'

describe "posts/edit" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :user_id => 1,
      :topic_id => 1,
      :body => "MyText",
      :forum_id => 1,
      :body_html => "MyText"
    ))
  end

  it "renders the edit post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => posts_path(@post), :method => "post" do
      assert_select "input#post_user_id", :name => "post[user_id]"
      assert_select "input#post_topic_id", :name => "post[topic_id]"
      assert_select "textarea#post_body", :name => "post[body]"
      assert_select "input#post_forum_id", :name => "post[forum_id]"
      assert_select "textarea#post_body_html", :name => "post[body_html]"
    end
  end
end
