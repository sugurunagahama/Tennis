class Court < ApplicationRecord
  
  extend ActiveHash::Associations::ActiveRecordExtensions#モジュールを取り込む記述
  belongs_to_active_hash :prefecture,optional: true#オプションのtrueで関連付けごとにオフにできます。


  
  
  validates :name, presence: true
  validates :type, presence: true
  validates :area, presence: true
  validates :image, presence: true
  validates :access, presence: true
  validates :opening_hour, presence: true
  validates :features, presence: true
  #バリデーション空白なし
  
  self.inheritance_column = :_type_disabled
  #カラム名タイプ使用
  mount_uploader :image, ImageUploader
end
