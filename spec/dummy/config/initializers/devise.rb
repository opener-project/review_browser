Devise.setup do |config|
  config.mailer_sender         = 'info@olery.com'
  config.stretches             = Rails.env.test? ? 1 : 10
  config.pepper                = 'b57fdc3ba6288df70ca46cf2f7a6c168408e2fd602a185deda0340db3f1b4427d7c02e94880ec3786a26c248ff40b12f4e39d3315bb7ddf5541b9efb27ecd8f7'
  config.invite_for            = 1.year
  config.reset_password_within = 1.day
end
