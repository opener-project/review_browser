# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :review_browser_reviewer, :class => 'Reviewer' do
    review_id 1
    name "MyString"
    location "MyString"
  end
end
