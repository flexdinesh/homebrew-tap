class Tokeninsights < Formula
  desc "Local token usage tracking for OpenCode, Pi, and Codex"
  homepage "https://github.com/flexdinesh/tokeninsights"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.1.0/tokeninsights_0.1.0_darwin_amd64.tar.gz"
      sha256 "99d628a88f8e3075d0a24b77f390b69109d45436b5e53754fb9ba82f5f126481"
    end

    on_arm do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.1.0/tokeninsights_0.1.0_darwin_arm64.tar.gz"
      sha256 "4e5b433459fcd1ecd2f7d1aa4ca29727aa022b4b3e965c8bff3a1988ecb4d4b1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.1.0/tokeninsights_0.1.0_linux_amd64.tar.gz"
      sha256 "10ea870c53cd23033cdc9efce7a0f635118eb19f5604185093bca69fe6663b25"
    end

    on_arm do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.1.0/tokeninsights_0.1.0_linux_arm64.tar.gz"
      sha256 "1337fec03ac2c42f62c7856b0acd40c4deefb780b91df219b174cdaf0741d009"
    end
  end

  def install
    bin.install "tokeninsights"
  end

  test do
    assert_match "tokeninsights #{version}", shell_output("#{bin}/tokeninsights --version")
  end
end
