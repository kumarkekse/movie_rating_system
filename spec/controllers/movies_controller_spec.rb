require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
  login_user

  it 'should get index' do
    get 'index'
    response.should be_success
  end

  it 'should show' do
    movie = create(:movie)
    get 'show', params: { id: movie.id }
    response.should be_success
  end
end
