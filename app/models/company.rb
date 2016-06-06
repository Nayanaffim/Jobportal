class Company < ActiveRecord::Base
	has_many :vacancies
	 resourcify
end
