require 'test_helper'

class Api::V1::PicturesControllerTest < ActionController::TestCase
  test "get index"  do
    get :index, format: :json
    assert_response :success
    assert_equal JSON.parse(@response.body).length, 0
  end

  test "get index with data" do
    picture = FactoryGirl.create(:picture)
    get :index, format: :json
    assert_response 200
    assert_equal JSON.parse(@response.body)[0], JSON.parse(picture.to_json)
  end

  test "create picture" do
    assert_difference 'Picture.count', 1 do
      post :create, format: :json, picture: FactoryGirl.attributes_for(:picture)
    end
    assert_response 201
  end

  test "create picture with bad arguments" do
    assert_no_difference 'Picture.count' do
      post :create, format: :json, picture: {url: "Invalid url"}
    end
    assert_response 422 # unprocessable entity
  end

  test "show picture" do
    picture = FactoryGirl.create(:picture)
    get :show, format: :json, id: picture.id
    assert_equal JSON.parse(@response.body), JSON.parse(picture.to_json)
    assert_response 200
  end

  test "update picture" do
    picture = FactoryGirl.create(:picture, title: "My title")
    put :update, format: :json, id: picture.id, picture: {title: "New title"}
    picture.reload
    assert_equal "New title", picture.title
  end

  test "update picture with bad arguments" do
    picture = FactoryGirl.create(:picture, title: "My title")
    put :update, format: :json, id: picture.id, picture: {url: "Invalid url"}
    picture.reload
    assert_equal "My title", picture.title
    assert_response 422 # unprocessable entity
  end

  test "delete picture" do
    picture = FactoryGirl.create(:picture)
    assert_difference 'Picture.count', -1 do
      delete :destroy, format: :json, id: picture.id
    end
  end
end
