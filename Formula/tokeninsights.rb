class Tokeninsights < Formula
  desc "Local token usage tracking for OpenCode, Pi, and Codex"
  homepage "https://github.com/flexdinesh/tokeninsights"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.1.2/tokeninsights_0.1.2_darwin_amd64.tar.gz"
      sha256 "cae90bc96ed26000a9f4b7b91b2b5cb762ed07993feaa4d2539bab99508442d0"
    end

    on_arm do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.1.2/tokeninsights_0.1.2_darwin_arm64.tar.gz"
      sha256 "b5194c4f3a0d56c55bb534dd9c26ce92d56adf4489addd472b456de99f7348ef"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.1.2/tokeninsights_0.1.2_linux_amd64.tar.gz"
      sha256 "426c8049aa20e57cac976e588b46c2a1a7d368b68569573808f88196d842503e"
    end

    on_arm do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.1.2/tokeninsights_0.1.2_linux_arm64.tar.gz"
      sha256 "2f7b6a922e0e17f8c6f21f6d528af2af5e6178b7766a8a354c8f8021ed5ef08a"
    end
  end

  def install
    bin.install "tokeninsights"
  end

  test do
    assert_match "tokeninsights #{version}", shell_output("#{bin}/tokeninsights --version")
  end
end
