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
    expect(@room.errors.full_messages).to include("Nameを入力してください")
  end
  it "nameが５１以上でエラーになる" do
    @room.name= "123456789012345678901234567899990asdfghjklqwertyuio"
    @room.valid?
    expect(@room.errors.full_messages).to include("Nameは50文字以内で入力してください")
  end
  end
  it "explanationが空では登録ができない" do
    @room.explanation = nil
    @room.valid?
    expect(@room.errors.full_messages).to include("Explanationを入力してください")
  end
  it "explanationが２５６文字以上でエラーになる" do
    @room.explanation = "fdahuiiiiiilgfuiadbfeajiwfebaiufbeiaubfeuuuuuuuucehaiwhaiuefhafhlihfehewiaheifhooieahiehieahoefhiefhfieahefihiefwheiwfhieawhefiwheiwfheifhefiheoahiefhiawehgfeaouaeohbaoubhiaobehifaeiheaoincaeuvyiuvyinciencioanxicybaieccyiyanionewhfeaiuhfiaeuhhfeaiuhifeahaaa"
    @room.valid?
    expect(@room.errors.full_messages).to include("Explanationは256文字以内で入力してください")

  end
  it "カテゴリーが設定されていない場合保存されない" do
    @room.category_id = 1
    @room.valid?
    expect(@room.errors.full_messages).to include("Categoryは1以外の値にしてください")
  end
  it "imageが空では登録できない" do
    @room.image = nil
    @room.valid?
    expect(@room.errors.full_messages).to include("Imageを入力してください")
  end
end
