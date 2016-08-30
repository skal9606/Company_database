# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#COMPANIES
Company.destroy_all
c1 = Company.create :name => "Amazon", :overview => "Online marketplace", :image => "abc", :industry => "eCommerce", :CEO => "Jeff Bezos", :location => "Seattle"
c2 = Company.create :name => "Stripe", :overview => "Web and mobile payments", :image => "abc", :industry => "Fintech", :CEO => "Patrick Collison", :location => "San Francisco"
c3 = Company.create :name => "Dropbox", :overview => "Cloud storage", :image => "abc", :industry => "Web hosting", :CEO => "Drew Houston", :location => "San Francisco"

#EMPLOYEES
Employee.destroy_all
e1 = Employee.create :name => "abc1", :role => "abc1", :previous => "abc1", :education => "abc1", :image => "abc1", :age =>"abc1", :email =>"a@b.com"
e2 = Employee.create :name => "abc2", :role => "abc2", :previous => "abc2", :education => "abc2", :image => "abc2", :age =>"abc2", :email =>"a@b.com"
e3 = Employee.create :name => "abc3", :role => "abc3", :previous => "abc3", :education => "abc3", :image => "abc3", :age =>"abc3", :email =>"a@b.com"
e4 = Employee.create :name => "def1", :role => "def1", :previous => "def1", :education => "def1", :image => "def1", :age =>"def1", :email =>"a@b.com"
e5 = Employee.create :name => "def2", :role => "def2", :previous => "def2", :education => "def2", :image => "def2", :age =>"def2", :email =>"a@b.com"
e6 = Employee.create :name => "ghi1", :role => "ghi1", :previous => "ghi1", :education => "ghi1", :image => "ghi1", :age =>"ghi1", :email =>"a@b.com"
e7 = Employee.create :name => "ghi2", :role => "ghi2", :previous => "ghi2", :education => "ghi2", :image => "ghi2", :age =>"ghi2", :email =>"a@b.com"

c1.employees << e1
c1.employees << e2
c1.employees << e3
c2.employees << e4
c2.employees << e5
c3.employees << e6
c3.employees << e7

#JOBS
Job.destroy_all
j1 = Job.create :title => "Software Engineer", :role => "xyz", :salary => "70000"
j2 = Job.create :title => "Operations", :role => "xyz", :salary => "70000"
j3 = Job.create :title => "Marketing", :role => "xyz", :salary => "70000"
j4 = Job.create :title => "Finance", :role => "xyz", :salary => "75000"
j5 = Job.create :title => "Software Engineer", :role => "xyz", :salary => "75000"
j6 = Job.create :title => "Social Media Manager", :role => "xyz", :salary => "80000"
j7 = Job.create :title => "CFO", :role => "xyz", :salary => "80000"

c1.jobs << j1
c1.jobs << j2
c1.jobs << j3
c2.jobs << j4
c2.jobs << j5
c3.jobs << j6
c3.jobs << j7

#FOLLOWERS
Follower.destroy_all
f1 = Follower.create :name => "abcd", :image => "abcd", :education => "abcd", :age => "abcd", :blurb => "abcd", :location => "abcd"
f2 = Follower.create :name => "efgh", :image => "efgh", :education => "efgh", :age => "efgh", :blurb => "efgh", :location => "efgh"
f3 = Follower.create :name => "ijkl", :image => "ijkl", :education => "ijkl", :age => "ijkl", :blurb => "ijkl", :location => "ijkl"

f1.companies << c1 << c2 << c3
f2.companies << c1 << c2
f3.companies << c1 << c3

#INVESTORS
Investor.destroy_all
i1 = Investor.create :name => "ab", :image => "ab", :education => "ab", :age =>"ab", :experience => "ab", :blurb => "ab", :location => "ab"
i2 = Investor.create :name => "cd", :image => "cd", :education => "cd", :age =>"cd", :experience => "cd", :blurb => "cd", :location => "cd"
i3 = Investor.create :name => "ef", :image => "ef", :education => "ef", :age =>"ef", :experience => "ef", :blurb => "ef", :location => "ef"

i1.companies << c1 << c2 << c3
i2.companies << c1 << c3
i3.companies << c1 << c2
