FactoryBot.define do
  factory :show do
    title  Faker::Lorem.words(3).join(' ').titleize
    description Faker::Lorem.paragraph
    reviews { build_list :reviews, rand(5..25) }
  end
end
