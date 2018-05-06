FactoryGirl.define do
  factory :user do
    random_username     { Faker::Name.name }
    remote_ip    { Faker::Number.number(12) }
  end
end