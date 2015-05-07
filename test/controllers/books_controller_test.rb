require "test_helper"

describe BooksController do
  it "should get index" do
    get :index
    assert_response :success
  end

end
