require 'spec_helper'

describe "jobs/new", :type => :view do
  before(:each) do
    assign(:job, Job.new(
      :title => "MyString"
    ))
  end

  it "renders new job form" do
    render

    assert_select "form[action=?][method=?]", jobs_path, "post" do

      assert_select "input#job_title[name=?]", "job[title]"
    end
  end
end
