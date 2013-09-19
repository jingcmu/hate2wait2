require 'spec_helper'

describe Location do
  before { @location = Location.new(name: "Golden House Chinese Restaurant",
                            address: "7108 Santa Teresa Blvd,San Jose,CA",
                            capacity: 102)
  }
  subject { @location }
  it { should respond_to(:name) }
  it { should respond_to(:capacity) }
  it { should respond_to(:address) }
end
