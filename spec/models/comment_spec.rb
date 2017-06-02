require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe "validation" do
    let(:image) { Image.create(url: "http://example.com/", title: "test") }
    
    describe "body" do
      subject(:no_body_comment) { image.comments.build(body: nil) }

      it "require" do
        expect(no_body_comment).to_not be_valid
        expect(no_body_comment.errors[:body].size).to be 1
      end
    end
  end
end
