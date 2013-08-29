# encoding: UTF-8

# Setup te wireframing review
hotel = ReviewBrowser::Hotel.find_by_name("Casa 400")
if hotel.nil?
  hotel = ReviewBrowser::Hotel.create(:name=>"Casa 400",
                                      :city=>"Amsterdam",
                                      :country=>"The Netherlands")
end
review = ReviewBrowser::Review.create( :age_group=>"20-34",
                                       :recommend=>false,
                                       :trip_type=>"pleasure",
                                       :visit_date=>3.days.ago,
                                       :visit_reason=>"Holidays",
                                       :reservation_number=>"12353",
                                       :hotel_id=> hotel.id,
                                       :source_name=>"trip_advisor",
                                       :title=>"Very, very, very inferior!!",
                                       :language=>"english",
                                       :sentiment=>-1,
                                       :review_date=>1.day.ago )

ratings = [["overall",60],
           ["value",50],
           ["rooms",20],
           ["location",80],
           ["cleanliness",10]]

ratings.each do |topic, value|
  review.ratings << ReviewBrowser::Rating.create(:topic=>topic, :value=>value)
end

comment_text = "I stayed on this Hotel for 3 nights. The hotel looks modern
  superficially. But the service and breakfast in particular are in big
  question mark. My bed sheets were not changed, the room was not cleaned very
  well, except for the bathroom, which was very clean. As this hotel caters for
  large overseas bus groups there were long time consuming lines at reception.
  The hotel is a long way from the city centre, only one restaurant nearby,
  so your only option is to take the metro to get anywhere. Fortunately,
  the metro is 5 minutes away. Casa 400 has a business model: rooms appear as
  cheap when you want to book, but you have to take into account that breakfast
  is not included (€15). Want to have your breakfast in the vicinity? Good luck."

review.comments << ReviewBrowser::Comment.create(:type=>"general",
                                                 :body=>comment_text)

ReviewBrowser::Reviewer.create(:name=>"Peter Boermans",
                               :location=>"Amsterdam",
                               :review_id=>review.id)

ReviewBrowser::MiniSentence.create(:sentiment=>"negative",
                                   :topic=>"cleanliness",
                                   :review_id=>review.id,
                                   :body=>"my bedsheets were not changed")

ReviewBrowser::MiniSentence.create(:sentiment=>"negative",
                                   :topic=>"cleanliness",
                                   :review_id=>review.id,
                                   :body=>"the room was not cleaned very well")

ReviewBrowser::MiniSentence.create(:sentiment=>"positive",
                                   :topic=>"cleanliness",
                                   :review_id=>review.id,
                                   :body=>"he bathroom was very clean")
