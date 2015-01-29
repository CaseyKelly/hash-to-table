class PeopleController < ApplicationController

  def index
    @people = 30.times.map do
      {
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        date_of_birth: rand_date(10020),
        eye_color: %w(brown blue hazel green).sample,
        telephone_number: Faker::PhoneNumber.phone_number,
        dog: {:name => Faker::Name.first_name,
              :breed => %w(beagle lab golden retriever datsun).sample,
              :age => rand(20)
              }
      }
    end
  end


  def rand_date(days)
    rand(days).days.ago(Date.today - 10000)
  end


end
