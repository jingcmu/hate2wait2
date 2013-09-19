require 'spec_helper'

describe User do
  before { @user = User.new(name: "Jacky Chen", email: "jacky.chen@sv.cmu.edu" ,
           address: "3334 Lantern Way, San Jose, CA", phone: "408-332-5756")
         }
  subject { @user }
  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:address) }
  it { should respond_to(:phone) }
end
