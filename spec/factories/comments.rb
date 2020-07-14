FactoryBot.define do
  factory :comment do
    article
    
    commenter { "Miki Malov" }
    body { "Hello Miki" }
  end
end