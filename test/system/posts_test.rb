require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
    setup do
        @post = posts(:one)
    end
    
    test "it visits the index" do
        visit posts_url
        assert_selector "h1", text: "Posts"
    end 
    
    test "it creates a post" do
        visit posts_url
        click_on "New post"
        
        check "Premium" if @post.premium
        fill_in "Title", with: @post.title
        click_on "Create Post"
        
        assert_text "Post was successfully created"
        click_on "Back"
    end
    
    test "it updates a post" do
        visit post_url(@post)
        click_on "Edit this post", match: :first
        
        check "Premium" if @post.premium
        fill_in "Title", with: @post.title
        click_on "Update Post"
        
        assert_text "Post was successfully updated"
        click_on "Back"
    end
    
    test "it destroys a post" do
        visit post_url(@post)
        click_on "Destroy this post", match: :first
        
        assert_text "Post was successfully destroyed"
    end
end