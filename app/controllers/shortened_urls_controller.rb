class ShortenedUrlsController < ApplicationController
  def encode
    original_url = params[:original_url]
    short_url = ShortenedUrl.create(original_url: original_url, short_url: generate_short_url)
    render json: { short_url: short_url.short_url }
  end

  def decode
    short_url = params[:short_url]
    original_url = ShortenedUrl.find_by(short_url: short_url)&.original_url
    render json: { original_url: original_url }
  end

  private

  def generate_short_url
    # Implement your own logic to generate a short URL
    # This can involve generating a random string or using an algorithm of your choice
    # For simplicity, you can use a library like SecureRandom to generate a random string
    SecureRandom.hex(4)
  end
end

