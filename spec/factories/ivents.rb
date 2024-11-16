# 複数パターンで似たテストデータを作りたい場合はtraitを使うと良い。

FactoryBot.define do
  factory :ivent do
    name {Faker::Tea.variety}
  
    trait :with_name_a do
      name {"a"}
    end
  
  end
end