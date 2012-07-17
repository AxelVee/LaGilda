require 'spec_helper'

describe "events/index" do
  before(:each) do
    assign(:events, [
      stub_model(Event,
        :city => "City",
        :name => "Name",
        :street => "Street",
        :state => "State",
        :country => "Country",
        :price => 1.5
      ),
      stub_model(Event,
        :city => "City",
        :name => "Name",
        :street => "Street",
        :state => "State",
        :country => "Country",
        :price => 1.5
      )
    ])
  end

  it "renders a list of events" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
