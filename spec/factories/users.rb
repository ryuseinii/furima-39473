FactoryBot.define do
  factory :user do
    nickname {Faker::Name.initials(number: 2)}
    email {Faker::Internet.email}
    # ランダムで生成する際、英数字になるよう'1a'追加
    password {'1a' + Faker::Internet.unique.password(min_length: 6)}
    password_confirmation {password}
    last_name { '山本' }
    first_name { '太郎' }
    last_name_kana { 'ヤマモト' }
    first_name_kana { 'タロウ' }
    birthday { Faker::Date.birthday }
  end
end