require 'spec_helper'

describe "forums/edit" do
  before(:each) do
    @forum = assign(:forum, stub_model(Forum,
      :name => "MyString",
      :description => "MyString",
      :topics_count => 1,
      :posts_count => 1,
      :description_html => "MyText"
    ))
  end

  it "renders the edit forum form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => forums_path(@forum), :method => "post" do
      assert_select "input#forum_name", :name => "forum[name]"
      assert_select "input#forum_description", :name => "forum[description]"
      assert_select "input#forum_topics_count", :name => "forum[topics_count]"
      assert_select "input#forum_posts_count", :name => "forum[posts_count]"
      assert_select "textarea#forum_description_html", :name => "forum[description_html]"
    end
  end
end
