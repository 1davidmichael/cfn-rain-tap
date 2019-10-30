require 'formula'

class Rain < Formula
  homepage 'https://github.com/aws-cloudformation/rain'
  version '0.7.0'
  url 'https://github.com/aws-cloudformation/rain/releases/download/v0.7.0/rain-v0.7.0_osx-amd64.zip'
  sha256 '09d098602400f08299c86a8795f36217a74d20eb7a65806a99d06dfb138fdc50'

  depends_on :arch => :x86_64

  def install
    bin.install "rain-v#{version}_osx-amd64/"
  end

  test do
    system "#{bin}/rain"
  end
end
