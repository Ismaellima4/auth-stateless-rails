# frozen_string_literal: true

JWT_SECRET = Rails.application.credentials.jwt_secret || 'secret'
