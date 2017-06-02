require "rails_helper"

RSpec.describe Comment, type: :request do
  let(:image) { Image.create(url: "http://example.com", title: "test") }
  
  describe "POST /images/:id/comments.json" do
    it "create comments" do
      post "/image/#{image.id}/comments.json", comment: { body: "test" }
      expect(response.status).to be 201
    end
  end
end