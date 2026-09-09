class Tokeninsights < Formula
  desc "Local token usage tracking for OpenCode, Pi, and Codex"
  homepage "https://github.com/flexdinesh/tokeninsights"
  version "0.0.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.0.5/tokeninsights_0.0.5_darwin_amd64.tar.gz"
      sha256 "7b3ef6e97bb174292fd43080c3521273c0c76d837b656a355805f891762b5476"
    end

    on_arm do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.0.5/tokeninsights_0.0.5_darwin_arm64.tar.gz"
      sha256 "4efdd8f9ab5ee6d1ffbade1ec026de4c4121008652f3088cda39083b0d6b8a0a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.0.5/tokeninsights_0.0.5_linux_amd64.tar.gz"
      sha256 "c98d160731e424fabc5280d61bd77a35b3863f42fb7a202eb36d7fb30832e937"
    end

    on_arm do
      url "https://github.com/flexdinesh/tokeninsights/releases/download/packages%2Fcli%2Fv0.0.5/tokeninsights_0.0.5_linux_arm64.tar.gz"
      sha256 "1a052621538a44b4442311c79a1398fa46fb3e03894f829614a76ac38b6aa2e3"
    end
  end

  def install
    bin.install "tokeninsights"
  end

  test do
    assert_match "tokeninsights #{version}", shell_output("#{bin}/tokeninsights --version")
  end
end
