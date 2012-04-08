require 'spec_helper'

describe "topics/show" do
  before(:each) do
    @topic = assign(:topic, stub_model(Topic,
      :forum_id => 1,
      :user_id => 2,
      :title => "Title",
      :hits => 3,
      :sticky => 4,
      :posts_count => "",
      :last_post_id => 5,
      :last_user_id => 6
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Title/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(//)
    rendered.should match(/5/)
    rendered.should match(/6/)
  end
end
