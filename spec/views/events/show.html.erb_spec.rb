require 'spec_helper'

describe "events/show" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :city => "City",
      :name => "Name",
      :street => "Street",
      :state => "State",
      :country => "Country",
      :price => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/City/)
    rendered.should match(/Name/)
    rendered.should match(/Street/)
    rendered.should match(/State/)
    rendered.should match(/Country/)
    rendered.should match(/1.5/)
  end
end
