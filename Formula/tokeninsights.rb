class Tokeninsights < Formula
  desc "Local token usage tracking for OpenCode, Pi, and Codex"
  homepage "https://github.com/flexdinesh/tokeninsights"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.1.3/tokeninsights_0.1.3_darwin_amd64.tar.gz"
      sha256 "d1f4d679b41e2c911654d0757f2b6bbb58f9e3886a0e50efc82073465f8c759c"
    end

    on_arm do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.1.3/tokeninsights_0.1.3_darwin_arm64.tar.gz"
      sha256 "e6db5c38ec7faa031f8ec7654d04e10d79ae499691f15eb7225335a9f0f01303"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.1.3/tokeninsights_0.1.3_linux_amd64.tar.gz"
      sha256 "6fc724e256cf2f3ffedd602c6e9f820ee283e3e066b620768b7c2e881e66d655"
    end

    on_arm do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.1.3/tokeninsights_0.1.3_linux_arm64.tar.gz"
      sha256 "ad52f13eb90901f1af85a38c026b78c3371071a82a236e51796382035884024d"
    end
  end

  def install
    bin.install "tokeninsights"
  end

  test do
    assert_match "tokeninsights #{version}", shell_output("#{bin}/tokeninsights --version")
  end
end
