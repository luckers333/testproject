require 'spec_helper'

describe "content/entries/index" do
  before(:each) do
    assign(:content_entries, [
      stub_model(Content::Entry,
        :title => "Title",
        :slug => "Slug",
        :content => "Content"
      ),
      stub_model(Content::Entry,
        :title => "Title",
        :slug => "Slug",
        :content => "Content"
      )
    ])
  end

  it "renders a list of content/entries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
