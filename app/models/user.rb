class User

  include DataMapper::Resource

  property :id,     Serial
  property :email,  String

  has n, :tweets

end

class Tweet

  include DataMapper::Resource

  property :id,     Serial
  property :text,   Text

  belongs_to :user

end

