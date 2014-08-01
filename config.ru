require './app'
run Sinatra::Application

Mail.defaults do
  delivery_method :smtp, {
    :address => 'smtp.sendgrid.net',
    :port => 587,
    :domain => 'localhost:9393',
    :user_name => 'postmaster@sandboxe3de37e7d98a4e5fbdceade0c8b1d2c9.mailgun.org',
    :password =>  '7u2yp3x6t6w9',
    :authentication => 'plain',
    :enable_starttls_auto => true
  }
end