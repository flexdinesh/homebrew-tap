class Tokeninsights < Formula
  desc "Local token usage tracking for OpenCode, Pi, and Codex"
  homepage "https://github.com/flexdinesh/tokeninsights"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.0.3/tokeninsights_0.0.3_darwin_amd64.tar.gz"
      sha256 "9c34e13d0da122906335654bacea471d5b80db30f76bf154e67f4baeebd13a79"
    end

    on_arm do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.0.3/tokeninsights_0.0.3_darwin_arm64.tar.gz"
      sha256 "830d70c25e9fd7fc1b0e7e7b361c109b2e8e9bfb3bfe23f365cf3d1e0c4e030b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.0.3/tokeninsights_0.0.3_linux_amd64.tar.gz"
      sha256 "8e4fff1bc3f11ca96f73a158e343915b5f2f3aee499c5c5b644244e4bcdaf199"
    end

    on_arm do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.0.3/tokeninsights_0.0.3_linux_arm64.tar.gz"
      sha256 "3996ec4f70a71b61ebd9673dcc3182b00a6ac972122351bcae611eb27aadb6a2"
    end
  end

  def install
    bin.install "tokeninsights"
  end

  test do
    assert_match "tokeninsights #{version}", shell_output("#{bin}/tokeninsights --version")
  end
end
