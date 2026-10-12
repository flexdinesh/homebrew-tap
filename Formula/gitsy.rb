class Gitsy < Formula
  desc "Scan directories for Git repositories and show a compact status table"
  homepage "https://github.com/flexdinesh/gitsy"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.9/gitsy_0.1.9_darwin_amd64.tar.gz"
      sha256 "6ead1ca70cfb7809c97f1dab6e503b3b6cee09748c30c590e4d07e5efcf270cb"
    end

    on_arm do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.9/gitsy_0.1.9_darwin_arm64.tar.gz"
      sha256 "7ff3b68c60aeaea7695490edab4cd37254b192bcd404343503e80f2af8905367"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.9/gitsy_0.1.9_linux_amd64.tar.gz"
      sha256 "72a7a13c651d26bf4d0a9eca5af81082b7c8ef5b6f61b51d8c0d8b8dd25dc0e3"
    end

    on_arm do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.9/gitsy_0.1.9_linux_arm64.tar.gz"
      sha256 "96c9cd65728005bd8eb731af9a0a35ba116a0da356814bd03c3949bde4cf67f3"
    end
  end

  def install
    bin.install "gitsy"
  end

  test do
    assert_match "gitsy #{version}", shell_output("#{bin}/gitsy --version")
  end
end
