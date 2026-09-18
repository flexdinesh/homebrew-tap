class Tokeninsights < Formula
  desc "Local token usage tracking for OpenCode, Pi, and Codex"
  homepage "https://github.com/flexdinesh/tokeninsights"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.1.1/tokeninsights_0.1.1_darwin_amd64.tar.gz"
      sha256 "a9d5b6c09d3b7889b3dfaeb35a95b7fe0834eee7d7b4c6bd7310d4358d982bd9"
    end

    on_arm do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.1.1/tokeninsights_0.1.1_darwin_arm64.tar.gz"
      sha256 "e2b454f0f9d3fcc3afacd32e7232786297c9f2a4c7f578eff8fb553ecf902179"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.1.1/tokeninsights_0.1.1_linux_amd64.tar.gz"
      sha256 "09c6ac295f5e549cb656564fee93b644946c8e476b638a3959ebe609cade476b"
    end

    on_arm do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.1.1/tokeninsights_0.1.1_linux_arm64.tar.gz"
      sha256 "c3b7ff97703125ec2c4de60a967314c1eab5a45c15b5f7f5ab42064fc0573cd5"
    end
  end

  def install
    bin.install "tokeninsights"
  end

  test do
    assert_match "tokeninsights #{version}", shell_output("#{bin}/tokeninsights --version")
  end
end
