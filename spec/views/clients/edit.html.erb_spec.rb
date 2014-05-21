require 'spec_helper'

describe "clients/edit", :type => :view do
  before(:each) do
    @client = assign(:client, Client.create!())
  end

  it "renders the edit client form" do
    render

    assert_select "form[action=?][method=?]", client_path(@client), "post" do
    end
  end
end
