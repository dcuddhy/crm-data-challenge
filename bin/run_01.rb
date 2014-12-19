require_relative('../data/crm.rb')
require 'pp'


result = []

CRM[:companies].each do |company|
  company_hash = {name: company[:name], employees: []}

  result << company_hash

  CRM[:people].each do |person|
    person[:employments].each do |employment|
      if employment[:company_id] == company[:id]
        employee_hash = {
          :id => person[:id],
          :first_name => person[:first_name],
          :last_name => person[:last_name],
          :title => employment[:title]
        }
        company_hash[:employees] << employee_hash
      end
    end
  end
  
end

pp result
