require 'test_helper'

class PostsTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test "should create post" do
    @post.name = 'Test Post'
    @post.content = 'Test Content'

    visit new_post_path
    fill_in 'Name', :with => @post.name
    fill_in 'Content', :with => @post.content
    click_on 'Create Post'
    assert page.has_content?(@post.name)
    assert page.has_content?(@post.content)
  end

end
