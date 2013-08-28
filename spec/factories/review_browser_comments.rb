# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :review_browser_comment, :class => 'Comment' do
    review_id 1
    type ""
    body "MyText"
  end
end
