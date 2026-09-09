class Tokeninsights < Formula
  desc "Local token usage tracking for OpenCode, Pi, and Codex"
  homepage "https://github.com/flexdinesh/tokeninsights"
  version "0.0.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.0.4/tokeninsights_0.0.4_darwin_amd64.tar.gz"
      sha256 "7e50a23c7826bd27cf72166cbe3281ae34a09476b2fa40350cf8071bc42bc8ab"
    end

    on_arm do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.0.4/tokeninsights_0.0.4_darwin_arm64.tar.gz"
      sha256 "31b7c18d78c4c1f4eb3c5ec6b8bcfed35c1343c44621b54362eae0c8aad8f575"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.0.4/tokeninsights_0.0.4_linux_amd64.tar.gz"
      sha256 "fba7257153bba552cf28eb40b4ced3ee593853ee701900ae045e52c4a1383638"
    end

    on_arm do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.0.4/tokeninsights_0.0.4_linux_arm64.tar.gz"
      sha256 "7a9a4a47039d4e1d44212c0fd235870942b012a79c7ff14cb2f1f3f1df0d684e"
    end
  end

  def install
    bin.install "tokeninsights"
  end

  test do
    assert_match "tokeninsights #{version}", shell_output("#{bin}/tokeninsights --version")
  end
end
