require 'rails_helper'

RSpec.describe Book, :type => :model do
	it "should be invalid without a title" do
		book = FactoryGirl.build(:book, title: nil)
		expect(book).to be_invalid
	end
	it "should be invalid without an author" do
		book = FactoryGirl.build(:book, author: nil)
		expect(book).to be_invalid
	end
	it "should be valid without a subject" do
		book = FactoryGirl.build(:book, subject: nil)
		expect(book).to be_valid
	end
end
