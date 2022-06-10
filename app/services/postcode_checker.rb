# frozen_string_literal: true

# PostcodeChecker is a service class that is used to check if postcodes are correct
class PostcodeChecker
  def self.uk_postcode_check(postcode)
    return false if postcode.nil? || postcode.blank?

    # rubocop:disable Layout/LineLength
    postcode.match?(/^\s*((GIR\s*0AA)|((([A-PR-UWYZ][0-9]{1,2})|(([A-PR-UWYZ][A-HK-Y][0-9]{1,2})|(([A-PR-UWYZ][0-9][A-HJKSTUW])|([A-PR-UWYZ][A-HK-Y][0-9][ABEHMNPRVWXY]))))\s*[0-9][ABD-HJLNP-UW-Z]{2}))\s*$/i)
    # rubocop:enable Layout/LineLength
  end
end
