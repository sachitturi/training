puts <<-STRING.strip
My connection info is:

  username: #{ENV["POSTGRESQL_CREDS_READONLY_USERNAME"]}
  password: #{ENV["POSTGRESQL_CREDS_READONLY_PASSWORD"]}
  database: my-app
STRING
