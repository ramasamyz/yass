require 'spec_helper'

describe "monitorships/show" do
  before(:each) do
    @monitorship = assign(:monitorship, stub_model(Monitorship,
      :user_id => 1,
      :topic_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
