FactoryBot.define do
  factory :album do

    name { Faker::Music.album }
    band
    genre
  end
end
