require_relative('../data/crm.rb')
require 'pp'


result = []

CRM[:people].each do |person|
  if person[:employments].empty?
    unemployed_hash = {
      :id => person[:id],
      :first_name => person[:first_name],
      :last_name => person[:last_name]
    }

    result << unemployed_hash

  end
end
