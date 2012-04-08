require 'spec_helper'

describe "forums/show" do
  before(:each) do
    @forum = assign(:forum, stub_model(Forum,
      :name => "Name",
      :description => "Description",
      :topics_count => 1,
      :posts_count => 2,
      :description_html => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Description/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/MyText/)
  end
end
