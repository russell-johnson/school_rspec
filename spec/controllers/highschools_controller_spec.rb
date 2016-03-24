require 'rails_helper'

RSpec.describe HighschoolsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it 'sets the highschool instance variable' do
      highschool = Highschool.create(name: 'test')
      get :index
      expect(assigns(:highschool)).to eq([highschool])
    end

    it 'renders the index template' do
      highschool = Highschool.create(name: 'test')
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end

    it ''

  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end

end
