require 'spec_helper'

describe "seats/edit" do
  before(:each) do
    @seat = assign(:seat, stub_model(Seat,
      :name => "MyString",
      :location_id => 1
    ))
  end

  it "renders the edit seat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => seats_path(@seat), :method => "post" do
      assert_select "input#seat_name", :name => "seat[name]"
      assert_select "input#seat_location_id", :name => "seat[location_id]"
    end
  end
end
