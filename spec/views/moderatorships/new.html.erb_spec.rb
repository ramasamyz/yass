require 'spec_helper'

describe "moderatorships/new" do
  before(:each) do
    assign(:moderatorship, stub_model(Moderatorship,
      :forum_id => 1,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new moderatorship form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moderatorships_path, :method => "post" do
      assert_select "input#moderatorship_forum_id", :name => "moderatorship[forum_id]"
      assert_select "input#moderatorship_user_id", :name => "moderatorship[user_id]"
    end
  end
end
