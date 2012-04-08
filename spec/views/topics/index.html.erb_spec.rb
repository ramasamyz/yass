require 'spec_helper'

describe "topics/index" do
  before(:each) do
    assign(:topics, [
      stub_model(Topic,
        :forum_id => 1,
        :user_id => 2,
        :title => "Title",
        :hits => 3,
        :sticky => 4,
        :posts_count => "",
        :last_post_id => 5,
        :last_user_id => 6
      ),
      stub_model(Topic,
        :forum_id => 1,
        :user_id => 2,
        :title => "Title",
        :hits => 3,
        :sticky => 4,
        :posts_count => "",
        :last_post_id => 5,
        :last_user_id => 6
      )
    ])
  end

  it "renders a list of topics" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
  end
end
