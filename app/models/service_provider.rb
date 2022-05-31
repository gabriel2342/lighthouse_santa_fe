class ServiceProvider < ApplicationRecord
  belongs_to :municipality
  before_save :normalize_phone
  
  validates :phone, phone: true, allow_blank: true
  validates :email, 'valid_email_2/email': { mx: true, disposable: true, disallow_subaddressing: true, message: "is not a valid email address" }, allow_blank: true

  def formatted_phone
    parsed_phone = Phonelib.parse(phone)
    return phone if parsed_phone.invalid?

    formatted =
      if parsed_phone.country_code == "1" # NANP
        parsed_phone.full_national # (415) 555-2671;123
      else
        parsed_phone.full_international # +44 20 7183 8750
      end
    formatted.gsub!(";", " x") # (415) 555-2671 x123
    formatted
  end

  private

  def normalize_phone
    self.phone = Phonelib.parse(phone).e164 if phone.present?
  end
end
