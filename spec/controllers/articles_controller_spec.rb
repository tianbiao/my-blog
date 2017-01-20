require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  describe 'GET #index' do
    it 'shoould respond successfully with an HTTP 200 status code' do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it 'should render the index template' do
      get :index
      expect(response).to render_template('index')
    end

    it 'should load all of the posts into @articles' do
      article1, article2 = Article.create!({title: 'title1', text: 'text1'}), Article.create!({title: 'title2', text: 'text2'})
      get :index

      expect(assigns(:articles)).to match_array([article1, article2])
    end
  end

  describe 'GET #show/:id' do
    before do
      @article = Article.create!({title: 'title1', text: 'text1'})
    end

    it 'should respond successful with an HTTP 200 status code' do
      get :show, id: @article
      expect(response).to be_success
    end

    it 'should render the show template' do
      get :show, id: @article
      expect(response).to render_template('show')
    end

    it 'should load the post into @article' do
      get :show, id: @article
      expect(assigns(:article)).to eql @article
    end
  end

end