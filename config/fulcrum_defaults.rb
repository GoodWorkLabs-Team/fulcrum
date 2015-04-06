Configuration.for('fulcrum') do
  # On Heroku, ensure you `heroku config:add APP_HOST=appname.herokuapp.com`
  app_host ENV['APP_HOST'] || '128.199.204.78:3000'

  # The address which system emails will originate from.
  mailer_sender ENV['MAILER_SENDER'] || 'fulcrum@goodworklabs.com'

  # Disable registration pages
  disable_registration ENV['DISABLE_REGISTRATION'] || false

  # Project column order:
  # progress_to_right: chilly bin, backlog, in progress, done
  # progress_to_left: done, in progress, backlog, chilly bin
  column_order 'progress_to_left'
end
