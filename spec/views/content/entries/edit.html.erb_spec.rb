require 'spec_helper'

describe "content/entries/edit" do
  before(:each) do
    @content_entry = assign(:content_entry, stub_model(Content::Entry,
      :title => "MyString",
      :slug => "MyString",
      :content => "MyString"
    ))
  end

  it "renders the edit content_entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
      assert_select "form[action=?][method=?]", content_entry_path(@content_entry), "post" do
      assert_select "input#content_entry_title[name=?]", "content_entry[title]"
      assert_select "input#content_entry_slug[name=?]", "content_entry[slug]"
      assert_select "input#content_entry_content[name=?]", "content_entry[content]"
    end
  end
end
