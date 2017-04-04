require 'rails_helper'

RSpec.describe "feeds/index", type: :view do
  before(:each) do
    assign(:feeds, [
      Feed.create!(
        :name => "Name",
        :url => "http://example.org#1",
      ),
      Feed.create!(
        :name => "Name",
        :url => "http://example.org#2",
      )
    ])
  end

  it "renders a list of feeds" do
    render
    assert_select "tr td", :text => "Name".to_s, :count => 2
  end
end
