class Book < ApplicationRecord

  belongs_to :user

  # バリデーションの記述
  validates :title,:body ,presence:true

end
