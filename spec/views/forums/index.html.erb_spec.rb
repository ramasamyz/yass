require 'spec_helper'

describe "forums/index" do
  before(:each) do
    assign(:forums, [
      stub_model(Forum,
        :name => "Name",
        :description => "Description",
        :topics_count => 1,
        :posts_count => 2,
        :description_html => "MyText"
      ),
      stub_model(Forum,
        :name => "Name",
        :description => "Description",
        :topics_count => 1,
        :posts_count => 2,
        :description_html => "MyText"
      )
    ])
  end

  it "renders a list of forums" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
