require 'spec_helper'

describe "moderatorships/index" do
  before(:each) do
    assign(:moderatorships, [
      stub_model(Moderatorship,
        :forum_id => 1,
        :user_id => 2
      ),
      stub_model(Moderatorship,
        :forum_id => 1,
        :user_id => 2
      )
    ])
  end

  it "renders a list of moderatorships" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
