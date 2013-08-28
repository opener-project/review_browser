# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :review_browser_starred_review, :class => 'StarredReview' do
    review_id "MyString"
  end
end
