require 'spec_helper'

describe "jobs/show", :type => :view do
  before(:each) do
    @job = assign(:job, Job.create!(
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
