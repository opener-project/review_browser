# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :review_browser_note, :class => 'Note' do
    review_id 1
    body "MyText"
  end
end
