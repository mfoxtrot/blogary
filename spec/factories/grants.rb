FactoryBot.define do
  factory :grant do
    grantable_id { 1 }
    grantable_type { "MyString" }
    mode { "MyString" }
  end
end
