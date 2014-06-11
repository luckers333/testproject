require 'spec_helper'

describe "content/entries/new" do
  before(:each) do
    assign(:content_entry, stub_model(Content::Entry,
      :title => "MyString",
      :slug => "MyString",
      :content => "MyString"
    ).as_new_record)
  end

  it "renders new content_entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", content_entries_path, "post" do
      assert_select "input#content_entry_title[name=?]", "content_entry[title]"
      assert_select "input#content_entry_slug[name=?]", "content_entry[slug]"
      assert_select "input#content_entry_content[name=?]", "content_entry[content]"
    end
  end
end
