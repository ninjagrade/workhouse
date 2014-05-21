require 'spec_helper'

describe "jobs/edit", :type => :view do
  before(:each) do
    @job = assign(:job, Job.create!(
      :title => "MyString"
    ))
  end

  it "renders the edit job form" do
    render

    assert_select "form[action=?][method=?]", job_path(@job), "post" do

      assert_select "input#job_title[name=?]", "job[title]"
    end
  end
end
