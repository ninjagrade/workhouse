class Job < ActiveRecord::Base
  belongs_to :client
  validates_presence_of :job_title,:min_payrate,:max_payrate,:start_date,:end_date,:location,:sector,:job_description,:client_id
end
