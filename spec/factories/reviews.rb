FactoryBot.define do
  factory :review do
    critic_name Faker::Name.name
    publication_name { "#{Faker::Lorem.words} " + %w(Times Journal Inquirer Daily).sample }
    score rand(1..100)
    body { Faker::Lorem.paragraph }
    title  Faker::Lorem.words(3).join(' ').titleize
    description Faker::Lorem.paragraph
  end
end
