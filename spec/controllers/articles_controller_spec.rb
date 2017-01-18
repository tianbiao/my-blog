require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  describe 'GET #index' do
    it 'responds successfully with an HTTP 200 status code' do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end

    it 'loads all of the posts into @posts' do
      article1, article2 = Article.create!({title: 'title1', text: 'text1'}), Article.create!({title: 'title2', text: 'text2'})
      get :index

      expect(assigns(:articles)).to match_array([article1, article2])
    end
  end
end