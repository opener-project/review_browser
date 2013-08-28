# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :review_browser_mini_sentence, :class => 'MiniSentence' do
    review_id 1
    topic "MyString"
    body "MyText"
    sentiment "MyString"
  end
end
