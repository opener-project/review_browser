# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :review_browser_review, :class => 'Review' do
    review_id "MyString"
    hotel_id 1
    reservation_number "MyString"
    age_group "MyString"
    recommend false
    manager_response "MyText"
    visit_reason "MyString"
    language "MyString"
    reviewer_type "MyString"
    source_name "MyString"
    review_date "2013-08-28"
    visit_date "2013-08-28"
    title "MyText"
    trip_type "MyString"
  end
end
