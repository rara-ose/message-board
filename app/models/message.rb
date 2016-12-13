class Message < ActiveRecord::Base
 #名前は必要入力かつ20字以内
  validates :name , length:{maximum:20} , presence: true
  #内容は必要入力かつ2文字以上30文字以内
  validates :body , length:{minimum:2,maximum:30} , presence: true
  #年齢は0歳以上150歳以下
  validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 150 }
end
