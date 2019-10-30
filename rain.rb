require 'formula'

class Rain < Formula
  homepage 'https://github.com/aws-cloudformation/rain'
  version '0.7.0'
  if OS.mac?
    url 'https://github.com/aws-cloudformation/rain/releases/download/v0.7.0/rain-v0.7.0_osx-amd64.zip'
    sha256 '09d098602400f08299c86a8795f36217a74d20eb7a65806a99d06dfb138fdc50'
    arch 'osx-amd64'
  elsif OS.linux?
    url 'https://github.com/aws-cloudformation/rain/releases/download/v0.7.0/rain-v0.7.0_linux-amd64.zip'
    sha256 'b3eb7308e806dbee3f5939d56f4c0ea1b1ef1100a3fddd8761b6272a9d2f806d'
    arch 'linux-amd64'
  end

  depends_on :arch => :x86_64

  def install
    bin.install "rain-v#{version}_#{arch}/"
  end

  test do
    system "#{bin}/rain"
  end
end
