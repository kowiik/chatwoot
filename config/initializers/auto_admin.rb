if ENV['CW_CREATE_ADMIN']
  begin
    eval(ENV['CW_CREATE_ADMIN'])
    Rails.logger.info "[Chatwoot] Admin user created via CW_CREATE_ADMIN"
  rescue => e
    Rails.logger.error "[Chatwoot] Error creating admin user: #{e.message}"
  end
end
