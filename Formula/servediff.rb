class Servediff < Formula
  desc "Review local Git changes in your browser"
  homepage "https://github.com/flexdinesh/servediff"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/servediff/releases/download/v0.1.1/servediff_0.1.1_darwin_amd64.tar.gz"
      sha256 "d95d6a2c83030c970ffbbe4ae014f10378eafc31ab112cde6c2afc9e91f4d64e"
    end

    on_arm do
      url "https://github.com/flexdinesh/servediff/releases/download/v0.1.1/servediff_0.1.1_darwin_arm64.tar.gz"
      sha256 "8f85dbf6de87d9e9b7ecf5db1c7d838753e93d7f306267457c209a648ea4c8e9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/servediff/releases/download/v0.1.1/servediff_0.1.1_linux_amd64.tar.gz"
      sha256 "aad069670883fad10d3a50474ebe3a72529a673960f05c26ddbedd87bf813a71"
    end

    on_arm do
      url "https://github.com/flexdinesh/servediff/releases/download/v0.1.1/servediff_0.1.1_linux_arm64.tar.gz"
      sha256 "f4ccc7c523c94949b04734a84307da0c9da1f71bf09a0e3095ff777a8cba3c32"
    end
  end

  def install
    bin.install "servediff"
  end

  test do
    assert_match "servediff #{version}", shell_output("#{bin}/servediff --version")
  end
end
