# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :review_browser_task, :class => 'Task' do
    review_id 1
    email "MyString"
    body "MyText"
  end
end
