class User < ApplicationRecord
  has_many :color_grids
  validates :random_username, presence: true
  validates :remote_ip, presence: true

def self.get_user(remote_ip)
  user = User.where(remote_ip: remote_ip).first
  username = remote_ip.present? ? user.random_username : set_name
  User.where(random_username: username).first
end

private
  def get_random_name
    "user-#{ SecureRandom.hex(3)}"
  end
  
  def set_name
    params = {random_username: get_random_name, remote_ip: request.remote_ip}
    user_params = params.permit(:random_username, :remote_ip)
    user = User.create(user_params)
    user.random_username
  end
end
