class JsonWebToken
  def self.encode(payload, exp = 24.hours.from_now)
    payload[:exp] = exp.to_i
    JWT.encode(payload, JWT_SECRET, 'HS256')
  end

  def self.decode(token)
    body = JWT.decode(token, JWT_SECRET, true, { algorithm: 'HS256' })
    ActiveSupport::HashWithIndifferentAccess.new body
  end
end
