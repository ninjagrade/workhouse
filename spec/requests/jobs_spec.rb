require 'spec_helper'

describe "Jobs", :type => :request do
  describe "GET /jobs" do
    it "works! (now write some real specs)" do
      get jobs_path
      expect(response.status).to be(200)
    end
  end
end