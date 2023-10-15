# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'POST /posts' do
    it 'Should create post with given params' do
      post_title = 'Post #1'
      post_body = 'Post Body'
      post '/posts', params: { post: { title: post_title, body: post_body } }
      expect(assigns(:post).id).not_to eql(nil)
      expect(assigns(:post).title).to eq(post_title)
      expect(assigns(:post).body).to eq(post_body)
    end
  end
end
