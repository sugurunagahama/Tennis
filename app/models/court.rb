class Court < ApplicationRecord
  
  geocoded_by :address#addressカラムを基準に緯度経度を算出する。
  after_validation :geocode, if: :address_changed?# 住所変更時に緯度経度も変更する。
   
  
  extend ActiveHash::Associations::ActiveRecordExtensions#モジュールを取り込む記述
  belongs_to_active_hash :prefecture,optional: true#オプションのtrueで関連付けごとにオフにできます。

  
  #バリデーション空白なし
  
  
  self.inheritance_column = :_type_disabled
  #カラム名タイプ使用
  mount_uploader :image, ImageUploader
end
