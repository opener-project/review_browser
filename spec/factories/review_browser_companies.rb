# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :review_browser_company, :class => 'Company' do
    name "MyString"
    city "MyString"
    country "MyString"
  end
end
