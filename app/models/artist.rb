class Artist < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :creative_works, dependent: :destroy

  has_one_attached :avatar

  # Add default avatar
  after_commit :add_default_avatar, on: %i[create update]

  def avatar_thumbnail
    if avatar.attached?
      avatar.variant(resize: '150x150!').processed
    else
      image_url('artists/default_profile_picture.png')
    end
  end

  # Full name
  def full_name
    "#{first_name} #{last_name}"
  end

  private

  def add_default_avatar
    return if avatar.attached?

    avatar.attach(
      io: File.open(
        Rails.root.join('app', 'assets', 'images', 'artists', 'default_profile_picture.png')
      ),
      filename: 'default_profile_picture.png',
      content_type: 'image/png'
    )
  end
end
