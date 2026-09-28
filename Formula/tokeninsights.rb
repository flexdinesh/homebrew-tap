class Tokeninsights < Formula
  desc "Local token usage tracking for OpenCode, Pi, and Codex"
  homepage "https://github.com/flexdinesh/tokeninsights"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.1.4/tokeninsights_0.1.4_darwin_amd64.tar.gz"
      sha256 "26e5f7c818d78709162a61e104ce7e5500e09e293bb37697991cbf1481325d6b"
    end

    on_arm do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.1.4/tokeninsights_0.1.4_darwin_arm64.tar.gz"
      sha256 "31d5f2a913ef7150d1575b2716135af749dab3936ca9e2c288478a10fc28ee4a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.1.4/tokeninsights_0.1.4_linux_amd64.tar.gz"
      sha256 "21b23530b80cc10c9234f14fcf2289656b5b39ab526d8015e8ff5202cb543c81"
    end

    on_arm do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.1.4/tokeninsights_0.1.4_linux_arm64.tar.gz"
      sha256 "bb5cc2d826cfbc342dbb9a8c49f4d749398128ad723833780166211b71140651"
    end
  end

  def install
    bin.install "tokeninsights"
  end

  test do
    assert_match "tokeninsights #{version}", shell_output("#{bin}/tokeninsights --version")
  end
end
