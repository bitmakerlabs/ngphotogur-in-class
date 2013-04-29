require 'test_helper'

class PictureTest < ActiveSupport::TestCase

  test "requires a title and url" do
    picture = Picture.new
    assert_false(picture.save)
    assert_equal(picture.errors.count, 2)
  end

  test "copyrighted defaults to false" do
    picture = Factory(:picture).create
    assert_false picture.copyright
  end
end
