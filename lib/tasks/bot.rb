require 'facebook/messenger'

include Facebook::Messenger

Bot.on :message do |message|
  message.id          # => 'mid.1457764197618:41d102a3e1ae206a38'
  message.sender      # => { 'id' => '1008372609250235' }
  message.seq         # => 73
  message.sent_at     # => 2016-04-22 21:30:36 +0200
  message.text        # => 'Hello, bot!'
  message.attachments # => [ { 'type' => 'image', 'payload' => { 'url' => 'https://www.example.com/1.jpg' } } ]

  message.reply(text: 'Hello, human!')
end

Bot.deliver({
  recipient: {
    id: '45123'
  },
  message: {
    text: 'Human?'
  }
}, access_token: ENV['ACCESS_TOKEN'])

message.reply(
  attachment: {
    type: 'image',
    payload: {
      url: 'http://sky.net/visual-aids-for-stupid-organisms/pig.jpg'
    }
  }
)

