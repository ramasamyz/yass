require 'spec_helper'

describe "posts/show" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :user_id => 1,
      :topic_id => 2,
      :body => "MyText",
      :forum_id => 3,
      :body_html => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/MyText/)
    rendered.should match(/3/)
    rendered.should match(/MyText/)
  end
end
