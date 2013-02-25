require 'factory_girl'
require 'browzy'

FactoryGirl.define do
  factory :chrome, class: Browzy::Browser do
    name    'Chrome'
    version '21.0'
  end

  factory :firefox, class: Browzy::Browser do
    name    'Firefox'
    version '21.0'
  end
end