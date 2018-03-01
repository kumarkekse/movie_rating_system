require 'rails_helper'

RSpec.describe ReviewsController, type: :controller do
  login_user

  it 'should create' do
    movie = create(:movie)
    expect do
      post 'create', params: { review: { movie_id: movie.id, rating: '8', comment: 'Hey, How are you?' } }
    end.to change { Review.count }.by(1)
  end

  it 'should show' do
    movie = create(:movie)
    review = create(:review, user: User.last, movie: movie)
    expect do
      post 'create', params: { id: review.id, review: { movie_id: movie.id, rating: '8', comment: 'Hey, How are you?' } }
    end.to change { Review.count }.by(1)
  end
end
