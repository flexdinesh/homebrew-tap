class Gitsy < Formula
  desc "Scan directories for Git repositories and show a compact status table"
  homepage "https://github.com/flexdinesh/gitsy"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.8/gitsy_0.1.8_darwin_amd64.tar.gz"
      sha256 "93735ad976676f337ab490e5202eb037cb21e15b6ae79cd823fb9377bee52e4b"
    end

    on_arm do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.8/gitsy_0.1.8_darwin_arm64.tar.gz"
      sha256 "4ab77457ab42f7b5509fc0d2489392387ac3c5d4197fc0dd114f2a238d79fd19"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.8/gitsy_0.1.8_linux_amd64.tar.gz"
      sha256 "49a742761330a7673ea76d3f6ccca4aa6c851a686b56f1f432e647662b8d7e54"
    end

    on_arm do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.8/gitsy_0.1.8_linux_arm64.tar.gz"
      sha256 "08e2120564b603f35c8b2b34d0387405ffa717fae0c4879da1d8c9e6d8078ebc"
    end
  end

  def install
    bin.install "gitsy"
  end

  test do
    assert_match "gitsy #{version}", shell_output("#{bin}/gitsy --version")
  end
end
