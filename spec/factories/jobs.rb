# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :job do
    title "MyString"
    min_payrate 7.50
    max_payrate 8.50
    start_date (Date.today - 5)
    end_date (Date.today + 4.months)
    location "North London"
    sector "Admin"
    job_description @mydescription
    client_id 4
  end
end

@mydescription = <<-eos
Commercial Development Executive Leicester to £40k + Bonus + Car Allowance An excellent opportunity is available with a leading insurance intermediary now seeking to hire into its Leicester team after a successful period of growth.
<<eos
