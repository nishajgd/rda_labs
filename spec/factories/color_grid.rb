FactoryGirl.define do
  factory :color_grid do
  	user_id     { Faker::Number.number(2) }
    grid_id     { Faker::Number.number(2) }
    color    { Faker::Name.name }
  end
end