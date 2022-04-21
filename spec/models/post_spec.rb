require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "Create" do
    before do
      @post = Post.create(date: date.today, body: "text here")
    end

    it 'can be created' do
      expect(@post).to be_valaid
    end
    
    it 'cannot be created without a date, body' do
      @post.date = nil
      @post.body = nil
      expect(@post).to_not be valid
    end
  end
end
