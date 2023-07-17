require 'securerandom'

def generate_password(length, include_special_characters = false)
  characters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
  characters += '!@#$%^&*()-_=+{[]}<>,./?' if include_special_characters

  # Generate a random salt value.
  salt = SecureRandom.hex(8)

  # Combine the salt and the password.
  salted_password = "#{salt}#{SecureRandom.urlsafe_base64(length)}"

  # Return the salted password.
  return salted_password.delete('+/')
end

def validate_password(password)
  # Check if the password is at least 8 characters long and contains at least one lowercase letter, one uppercase letter, one digit, and one special character.
  return password.length >= 8 && password.chars.any? { |c| c.match?(/[a-z]/) } &&
         password.chars.any? { |c| c.match?(/[A-Z]/) } &&
         password.chars.any? { |c| c.match?(/\d/) } &&
         password.chars.any? { |c| c.match?(/[!@#$%^&*()-_=+{[]}<>,./?]/) }
end

# Generate a random password and validate it.
generated_password = generate_password(12, true)
puts "Generated Password: #{generated_password}"
puts "Password Valid: #{validate_password(generated_password)}"
