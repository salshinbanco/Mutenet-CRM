class Company < ActiveRecord::Base
validates :company, presence: true
end
