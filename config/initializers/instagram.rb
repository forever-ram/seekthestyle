IG_SECRETS = {
  'test' => {id: 'e19cde30b4934722ad1838e63c61552b', key: '05e2bc4a019c454497d8129208f31fb0'},
  'development' => {id: 'e19cde30b4934722ad1838e63c61552b', key: '05e2bc4a019c454497d8129208f31fb0'},

  #'development' => {id: '9f652d32593f49ca98553de3c255a67f', key: '9ab70171fb674521aa57dfbb72d562d5'},
  'production' =>  {id: '4658fa17d45244c88dd13c73949a57d7', key: 'ae6cfe5d13544eada4dece2ec40ac5dc'}
}

Instagram.configure do |config|
  config.client_id = IG_SECRETS[Rails.env][:id]
  config.client_secret = IG_SECRETS[Rails.env][:key]
end