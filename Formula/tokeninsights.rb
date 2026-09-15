class Tokeninsights < Formula
  desc "Local token usage tracking for OpenCode, Pi, and Codex"
  homepage "https://github.com/flexdinesh/tokeninsights"
  version "0.0.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.0.8/tokeninsights_0.0.8_darwin_amd64.tar.gz"
      sha256 "8a443836dbd8f1efc68f3934ec3f55bc7ff18109c6b56e25c108030a620e5f8d"
    end

    on_arm do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.0.8/tokeninsights_0.0.8_darwin_arm64.tar.gz"
      sha256 "142b24e3e2aefd24efab8fb5cba00d1931f73840e1881f30db0076123b2e6240"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.0.8/tokeninsights_0.0.8_linux_amd64.tar.gz"
      sha256 "baa14616a2429b597212ccbf9a31fc10016cbab53b713f3eb58a145d2812d755"
    end

    on_arm do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.0.8/tokeninsights_0.0.8_linux_arm64.tar.gz"
      sha256 "ca549f08a61f02f6cfc035a8cb92fb66228b2ee0bc641169f815bcb60fb6692a"
    end
  end

  def install
    bin.install "tokeninsights"
  end

  test do
    assert_match "tokeninsights #{version}", shell_output("#{bin}/tokeninsights --version")
  end
end
