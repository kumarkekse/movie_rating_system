FactoryBot.define do
  factory :user do
    sequence :email do |n|
      "person1#{n}@example.com"
    end
    password 'password'
    password_confirmation 'password'
  end

  factory :movie do
    dvd_title 'Zombies'
    studio "World Wide Multi Media"
    released nil
    status 'Out'
    sound '2.0'
    versions '4:3'
    price '$17.95'
    rating 'NR'
    year 'VAR'
    genre 'Horror'
    aspect '1.33:1'
    upc '191091363546'
    dvd_release_date '5/9/17'
    movie_id '299466'
    timestamp '5/9/17'
    updated  '1'
  end

  factory :review do
    movie
    rating '8'
    comment 'Hey, How are you?'
    user
  end
end
