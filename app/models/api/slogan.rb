class Api::Slogan < ApplicationRecord
  # TODO: add validations here
  # https://edgeguides.rubyonrails.org/active_record_validations.html
  validates :first_name, presence: {message: "Youy first name cannot be blank"}, length: {
                           in: 3..20,
                           too_short: "Your first name is too short.",
                           too_long: "Your first name is too long (%{count} characters max).",
                         }

  validates :last_name, presence: {message: "Youy last name cannot be blank"}, length: {
                          in: 3..40,
                          too_short: "Your last name is too short.",
                          too_long: "Your last name is too long (%{count} characters max).",
                        }

  validates :slogan, presence: {message: "Youy slogan cannot be blank"}, length: {
                       in: 3..50,
                       too_short: "Your slogan is too short.",
                       too_long: "Your slogan is too long (%{count} characters max).",
                     }

  validates :email, uniqueness: {message: "This email is already in use"}
  validates :email, presence: {message: "The email is required"}
  validates :email, format: {
                      with: URI::MailTo::EMAIL_REGEXP,
                      message: "The email is invalid",
                    }
end
