class JsonWebToken
  # Encodes and signs the payload (e.g. the user email) using our app's secret key
  # The result also includes the expiration date.
  def self.encode(payload)
    payload.reverse_merge!(meta)
    JWT.encode(payload, Rails.application.secrets.secret_key_base)
  end

  # Decode the JWT to get the user email
  def self.decode(token)
    JWT.decode(token, Rails.application.secrets.secret_key_base)
  end

  # Validates the payload hash for expiration and meta claims
  def self.valid_payload(payload)
    if payload['iss'] != meta[:iss] || payload['aud'] != meta[:aud]
      return false
    else
      return true
    end
  end

  # Default options to be encoded in the token
  def self.meta
    {
        #   exp: 7.days.from_now.to_i,
        #   iss: 'issuer_name',
        #   aud: 'client',
    }
  end
end