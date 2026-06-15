class Tokeninsights < Formula
  desc "Local token usage tracking for OpenCode, Pi, and Codex"
  homepage "https://github.com/flexdinesh/tokeninsights"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.0.2/tokeninsights_0.0.2_darwin_amd64.tar.gz"
      sha256 "9e360b25766319e33f8c6a17ed879421c26abb7cd5d7d998d80ef17edbd22e0f"
    end

    on_arm do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.0.2/tokeninsights_0.0.2_darwin_arm64.tar.gz"
      sha256 "22ee1e40325dcd18bf5e3540864516223ba9793a30fc3c1f42f46ab96fc2b738"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.0.2/tokeninsights_0.0.2_linux_amd64.tar.gz"
      sha256 "eb006c4859471ac13704973ec3163f33ee589f3883145e153dfeb9b77f66bb5d"
    end

    on_arm do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.0.2/tokeninsights_0.0.2_linux_arm64.tar.gz"
      sha256 "0d2b36d06bbccea3d0c34145d5aa0eacccf438284c7d276195e83ea07846905c"
    end
  end

  def install
    bin.install "tokeninsights"
  end

  test do
    assert_match "tokeninsights #{version}", shell_output("#{bin}/tokeninsights --version")
  end
end
