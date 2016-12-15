FactoryGirl.define do
  factory :teacher do
    academic_title { Teacher::TITLES.sample }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
  end
end
