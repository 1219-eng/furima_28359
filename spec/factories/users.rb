FactoryBot.define do
  factory :user do
    nickname              {"abe"}
    email                 {"kkk@gmail.com"}
    password              {"123456ab"}
    password_confirmation {"password"}
    birthday {"20121212"}
    phonetic_family_name {"タナカ"}
    phonetic_name {"タロウ"}
    family_name {"田中"}
    name {"太郎"}
  end
end