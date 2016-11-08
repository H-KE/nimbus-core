class Custom::RegistrationsController < DeviseTokenAuth::RegistrationsController

  def create
    super do |resource|
      Sunwukong.notifier.ping("A new user has signed up! Please welcome " + current_api_user.fullname + " to Nimbus. User number: " + current_api_user.id.to_s, channel: '#users')
    end
  end

end
