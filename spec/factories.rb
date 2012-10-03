FactoryGirl.define do
  factory :user do
    name     "Avner Cohen"
    email    "email@email.org"
    password "foobar"
    password_confirmation "foobar"
  end
end