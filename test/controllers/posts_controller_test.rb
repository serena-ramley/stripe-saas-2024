require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
    setup do
        @post = posts(:one)
    end
    
    test "it gets the index page" do
        get posts_url
        
        assert_response :success
    end
    
    test "it gets the new post page" do
        get new_post_url
        
        assert_response :success
    end
    
    test "it creates a post" do
        assert_difference("Post.count") do
            post posts_url, params: { post: { premium: @post.premium, title: @post.title } }
        end
        
        assert_redirected_to post_url(Post.last)
    end
    
    test "it shows a post" do
        get post_url(@post)
        
        assert_response :success
    end
    
    test "it gets the edit page" do
        get edit_post_url(@post)
        assert_response :success
    end
    
    test "it updates the post" do
        patch post_url(@post), params: { post: { premium: @post.premium, title: @post.title } }
        assert_redirected_to post_url(@post)
    end
    
    test "it destroys a post" do
        assert_difference("Post.count", -1) do
            delete post_url(@post)
        end
        
        assert_redirected_to posts_url
    end