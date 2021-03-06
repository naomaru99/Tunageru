class Worker < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  #アソシエーション
  has_many :message_rooms



  has_attached_file :avatar, styles: { medium: "300x300#", thumb: "100x100#"}
  validates_attachment_content_type :avatar, content_type: ["image/jpg","image/jpeg","image/png"]

  def name
    "#{family_name} #{first_name}"
  end

  def name_kana
    "#{family_name_kana} #{first_name_kana}"
  end







  
end
