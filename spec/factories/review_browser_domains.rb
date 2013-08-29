# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :review_browser_domain, :class => 'Domain' do
    name "MyString"
  end
end
