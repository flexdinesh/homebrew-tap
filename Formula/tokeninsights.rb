class Tokeninsights < Formula
  desc "Local token usage tracking for OpenCode, Pi, and Codex"
  homepage "https://github.com/flexdinesh/tokeninsights"
  version "0.0.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.0.7/tokeninsights_0.0.7_darwin_amd64.tar.gz"
      sha256 "9780b0c702c713fe00d70d2fe6fe25eb848dcf73d0a92e2a6205d4ecd3a008c4"
    end

    on_arm do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.0.7/tokeninsights_0.0.7_darwin_arm64.tar.gz"
      sha256 "b5b6757a20c800bdad5bcb8a49adbe762808f929578ade15589ed594534539dc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.0.7/tokeninsights_0.0.7_linux_amd64.tar.gz"
      sha256 "325b438e009f608f21fdc4ecdb5833cfd29937ad045c88389b1af65da3d3d75b"
    end

    on_arm do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.0.7/tokeninsights_0.0.7_linux_arm64.tar.gz"
      sha256 "7f5874810a9205a56b4f0f5424c7b3d3ae2f1661cb2c7bfc3b85292889eb9c54"
    end
  end

  def install
    bin.install "tokeninsights"
  end

  test do
    assert_match "tokeninsights #{version}", shell_output("#{bin}/tokeninsights --version")
  end
end
