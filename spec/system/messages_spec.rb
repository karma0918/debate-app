require 'rails_helper'

RSpec.describe "Messages", type: :system do
  before do
    @room = FactoryBot.create(:room)
    @user = FactoryBot.create(:user)
    @message = Faker::Lorem.sentence
    
  end
  it 'ログインしたユーザーは部屋を作りメッセージを送信できる' do 
    #ログイン
    sign_in(@user)
    #部屋に入る
    visit room_messages_path(@room)
    #メッセージを入力する
    fill_in 'message[content]', with: @message
    #メッセージを送信するとメッセージを1上がることが確認する

      find('input[name="commit"]').click

    #メッセージの画面に戻ってくる
    expect(current_path).to eq room_messages_path(@room)
    #先程のメッセージが表示されている
    expect(page).to have_content @message
  end
end