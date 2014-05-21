require 'spec_helper'

describe "jobs/index", :type => :view do
  before(:each) do
    assign(:jobs, [
      Job.create!(
        :title => "Title"
      ),
      Job.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of jobs" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
