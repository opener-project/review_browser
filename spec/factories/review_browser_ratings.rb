# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :review_browser_rating, :class => 'Rating' do
    review_id 1
    topic "MyString"
    value 1
  end
end
