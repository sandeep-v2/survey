# Use this hook to configure devise mailer, warden hooks and so forth. The first
# four configuration values can also be set straight in your models.
Devise.setup do |config|

  # ==> ORM configuration
  # Load and configure the ORM. Supports :active_record (default) and
  # :mongoid (bson_ext recommended) by default. Other ORMs may be
  # available as additional gems.
  require 'devise/orm/active_record'

  # to authenticate or find a user. Default is :email.
  config.case_insensitive_keys = [ :email ]

  # Configure which authentication keys should have whitespace stripped.
  # These keys will have whitespace before and after removed upon creating or
  # modifying a user and when used to authenticate or find a user. Default is :email.
  config.strip_whitespace_keys = [ :email ]

  # ==> Configuration for :database_authenticatable
  # For bcrypt, this is the cost for hashing the password and defaults to 10. If
  # using other encryptors, it sets how many times you want the password re-encrypted.
  config.stretches = 10

  # ==> Configuration for :rememberable
  # The time the user will be remembered without asking for credentials again.
  config.remember_for = 1.year

  # Regex to use to validate the email address
  config.email_regexp = /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

  config.secret_key = '9170b8bd4d1de24ab8a439265bf50665b20820eb41e905eb7a0252db0c7ac6a4329929ef575eb82e77d24e8b115bb338ca3b6f908df2981fac7393dc3f569bc2'
end

