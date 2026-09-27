class Servediff < Formula
  desc "Review local Git changes in your browser"
  homepage "https://github.com/flexdinesh/servediff"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/servediff/releases/download/v0.1.2/servediff_0.1.2_darwin_amd64.tar.gz"
      sha256 "a43aa2e90cf14f36d739116e2ee5ebe36b01c45c5e5e8288b3787f779cc8c336"
    end

    on_arm do
      url "https://github.com/flexdinesh/servediff/releases/download/v0.1.2/servediff_0.1.2_darwin_arm64.tar.gz"
      sha256 "82a27c81c18cf5ae2445483bc6da966762d881eb5e294cee13c52bd50fa02da2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/servediff/releases/download/v0.1.2/servediff_0.1.2_linux_amd64.tar.gz"
      sha256 "93711559e692ffca1a6e753d0cd6e206bafe6ded65bdac8b612d91da3c4f68c2"
    end

    on_arm do
      url "https://github.com/flexdinesh/servediff/releases/download/v0.1.2/servediff_0.1.2_linux_arm64.tar.gz"
      sha256 "bc18ae806c9758c4851b86354c74fd8514cbd2ffb6adf0340667448433aafe74"
    end
  end

  def install
    bin.install "servediff"
  end

  test do
    assert_match "servediff #{version}", shell_output("#{bin}/servediff --version")
  end
end
