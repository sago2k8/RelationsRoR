class Person < ActiveRecord::Base
	has_one :personal_info
	has_many :jobs
	validates :login, uniqueness: true
	has_and_belongs_to_many :hobbies
	has_many :approx_salaries, through: :jobs, source: :salary_range
end
