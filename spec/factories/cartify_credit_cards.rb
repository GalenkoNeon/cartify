FactoryGirl.define do
  factory :cartify_credit_card, class: 'Cartify::CreditCard' do
    number "MyString"
    name "MyString"
    mm_yy "MyString"
    cvv "MyString"
  end
end
