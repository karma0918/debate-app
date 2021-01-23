require 'rails_helper'

RSpec.describe "Rooms", type: :system do
  before do
    @user = FactoryBot.create(:user)
    @room = FactoryBot.create(:room)

  end
  context '部屋を作成できるとき' do
    it 'ログインしたユーザーは部屋をつくることができる' do
      #ログインする
      visit new_user_session_path
      #部屋を作成するボタンが有る
      sign_in(@user)
      #部屋作成ページに移動
      visit new_room_path
      #フォームに入力する
      fill_in 'room[name]', with: @room.name
      fill_in 'room[explanation]', with: @room.explanation
      select 'エンタメ', from: 'room[category_id]'
      attach_file 'room[image]', 'app/assets/images/war.jpg'
      #送信するとRoomモデルのカウントが１上がることを確認する
      expect{
        find('input[name="commit"]').click
      }.to change {Room.count }.by(1)
      #トップページに移動したことを確認する
      expect(current_path).to eq root_path
      # トップページには先ほど作成した内容の部屋が存在することを確認する（名前）
      expect(page).to have_content(@room.name)
    end 
  end
end
