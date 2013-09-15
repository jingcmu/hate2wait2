require 'spec_helper'

describe "seats/new" do
  before(:each) do
    assign(:seat, stub_model(Seat,
      :name => "MyString",
      :location_id => 1
    ).as_new_record)
  end

  it "renders new seat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => seats_path, :method => "post" do
      assert_select "input#seat_name", :name => "seat[name]"
      assert_select "input#seat_location_id", :name => "seat[location_id]"
    end
  end
end
