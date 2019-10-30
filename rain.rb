require 'formula'

class Rain < Formula
  homepage 'https://github.com/aws-cloudformation/rain'
  version '0.7.0'
  if OS.mac?
    url 'https://github.com/aws-cloudformation/rain/releases/download/v0.7.0/rain-v0.7.0_osx-amd64.zip'
    sha256 '6b725245dec54d6f05e3f67e26c4e6818887f37226eef751165f155ec9db1e9f'
  elsif OS.linux?
    url 'https://github.com/aws-cloudformation/rain/releases/download/v0.7.0/rain-v0.7.0_linux-amd64.zip'
    sha256 '7d6b4ff5eb88622bd2c6c32d8483432a3f87dd78ea9cb0a5d60c6b7d1feca19b'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'rain'
  end

  test do
    system "#{bin}/rain"
  end
end
