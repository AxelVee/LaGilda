require 'spec_helper'

describe "events/edit" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :city => "MyString",
      :name => "MyString",
      :street => "MyString",
      :state => "MyString",
      :country => "MyString",
      :price => 1.5
    ))
  end

  it "renders the edit event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => events_path(@event), :method => "post" do
      assert_select "input#event_city", :name => "event[city]"
      assert_select "input#event_name", :name => "event[name]"
      assert_select "input#event_street", :name => "event[street]"
      assert_select "input#event_state", :name => "event[state]"
      assert_select "input#event_country", :name => "event[country]"
      assert_select "input#event_price", :name => "event[price]"
    end
  end
end
