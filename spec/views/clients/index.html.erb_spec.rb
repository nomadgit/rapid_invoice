require 'rails_helper'

RSpec.describe "clients/index", :type => :view do
  before(:each) do
    assign(:clients, [
      Client.create!(
        :  => " "
      ),
      Client.create!(
        :  => " "
      )
    ])
  end

  it "renders a list of clients" do
    render
    assert_select "tr>td", :text => " ".to_s, :count => 2
  end
end
