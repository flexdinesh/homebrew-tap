class Tokeninsights < Formula
  desc "Local token usage tracking for OpenCode, Pi, and Codex"
  homepage "https://github.com/flexdinesh/tokeninsights"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.1.6/tokeninsights_0.1.6_darwin_amd64.tar.gz"
      sha256 "bb8061c098e244c50673d95004e63b2efc8b2b972317634687332f612deb539d"
    end

    on_arm do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.1.6/tokeninsights_0.1.6_darwin_arm64.tar.gz"
      sha256 "7bbbebce207cf30cc5f0eb9807163527de21551bfe1c4bf5019e4fb0fac10847"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.1.6/tokeninsights_0.1.6_linux_amd64.tar.gz"
      sha256 "0ecf427be859d97853542edeb6009563ac0a8a03d487d23024aede618953eaeb"
    end

    on_arm do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.1.6/tokeninsights_0.1.6_linux_arm64.tar.gz"
      sha256 "5bf552a417324b44b16f195babc92350d5dff565ebd4dc2ec17fd9e8f1c3a9b1"
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
