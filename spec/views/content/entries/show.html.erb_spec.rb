require 'spec_helper'

describe "content/entries/show" do
  before(:each) do
    @content_entry = assign(:content_entry, stub_model(Content::Entry,
      :title => "Title",
      :slug => "Slug",
      :content => "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Slug/)
    rendered.should match(/Content/)
  end
end
