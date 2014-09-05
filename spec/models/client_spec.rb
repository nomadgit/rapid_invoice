require 'rails_helper'

describe Client do
  it "is invalid without a name" do
  	expect(build(:client, name: nil)).to have(1).errors_on(:name)
  end
  it "is invalid without a first line of the address" do
  	expect(build(:client, address_1: nil)).to have(1).errors_on(:address_1)
  end
  it "is invalid without city" do
  	expect(build(:client, city: nil)).to have(1).errors_on(:city)
  end
  it "is invalid without a postcode" do
  	expect(build(:client, postcode: nil)).to have(1).errors_on(:postcode)
  end
  it "is invalid without an email" do
  	expect(build(:client, email: nil)).to have(2).errors_on(:email)
  end
  it "is invalid if the email is in an incorrect format" do
  	expect(build(:client, email: 'xxx')).to have(1).errors_on(:email)
  	expect(build(:client, email: 'xxx@yyy')).to have(1).errors_on(:email)
  	expect(build(:client, email: 'xxx.com')).to have(1).errors_on(:email)
  	expect(build(:client, email: 'xx%x@yyy.com')).to have(1).errors_on(:email)
  	expect(build(:client, email: 'xxx@yyy.zz-zz.com')).to have(1).errors_on(:email)
  end
  it "is valid with a name, an address and an email in the correct format" do
  	expect(build(:client)).to be_valid 
  end
  
end
