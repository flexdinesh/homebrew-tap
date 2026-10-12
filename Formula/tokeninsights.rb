class Tokeninsights < Formula
  desc "Local token usage tracking for OpenCode, Pi, and Codex"
  homepage "https://github.com/flexdinesh/tokeninsights"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.1.5/tokeninsights_0.1.5_darwin_amd64.tar.gz"
      sha256 "5f176d8147f79d1dbfd87d3fd52e46c5784843e74be2a41b7b9e81be99ff11f6"
    end

    on_arm do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.1.5/tokeninsights_0.1.5_darwin_arm64.tar.gz"
      sha256 "27bd7bf2c5f91f4b774e53d2e672936e0f6425595ab896cfda5582e19fdd7623"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.1.5/tokeninsights_0.1.5_linux_amd64.tar.gz"
      sha256 "3195281d15351d7428d7ab23c901aa83c2eea03a1c85ac1ba667ec24cbe48ac9"
    end

    on_arm do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.1.5/tokeninsights_0.1.5_linux_arm64.tar.gz"
      sha256 "c739b73ad1b18cbb6e499bf752ab1aa968622cd5c19f26d4bdff002b38ed73fa"
    end
  end

  def install
    bin.install "tokeninsights", "tokeninsights-server"
  end

  test do
    assert_match "tokeninsights #{version}", shell_output("#{bin}/tokeninsights --version")
    assert_match "tokeninsights-server #{version}", shell_output("#{bin}/tokeninsights-server --version")
  end
end
