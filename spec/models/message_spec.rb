require 'rails_helper'

RSpec.describe Message, type: :model do
  before do
    @message = FactoryBot.build(:message)
  end
  it "contentが空では保存されない" do
    @message.content = nil
    @message.valid?
    expect(@message.errors.full_messages).to include("Contentを入力してください")
  end
  it "contentがあれば保存する" do
    expect(@message).to be_valid
  end
end
