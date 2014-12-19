require_relative('../data/crm.rb')
require 'pp'


result = []

CRM[:companies].each do |company|
  CRM[:people].each do |person|
    person[:employments].each do |employment|
      unless person[:employments].empty?
        employments_hash = {
          :company_id => company[:id],
          :commpany_name => company[:name],
          :person_id => person[:id],
          :person_first_name => person[:first_name],
          :person_last_name => person[:last_name],
          :title => employment[:title]
        }

        result << employments_hash
        
      end
    end
  end
end

pp result
