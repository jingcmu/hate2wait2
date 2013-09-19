require 'spec_helper'

describe Seat do
  subject { @seat }
  before { @seat = User.new(name: "Jacky Chen", location_id: 10) }
  it { should respond_to(:name) }
  it { should respond_to(:location_id) }
end
