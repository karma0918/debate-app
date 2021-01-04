require 'rails_helper'

RSpec.describe Room, type: :model do
  before do
    @room = FactoryBot.build(:room)
  end
  it "すべてが書かれている場合登録できる" do
    expect(@room).to be_valid
  end
  it "nameが空では登録ができない" do
    @room.name = nil
    @room.valid?
    expect(@room.errors.full_messages).to include("Name can't be blank")

  end
  it "explanationが空では登録ができない" do
    @room.explanation = nil
    @room.valid?
    expect(@room.errors.full_messages).to include("Explanation can't be blank")

  end
  it "カテゴリーが設定されていない場合保存されない" do
    @room.category_id = 1
    @room.valid?
    expect(@room.errors.full_messages).to include("Category must be other than 1")
  end
end
