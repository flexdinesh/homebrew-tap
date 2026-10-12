class Servef < Formula
  desc "Serve and browse Markdown files from a local directory"
  homepage "https://github.com/flexdinesh/servef"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/servef/releases/download/v0.1.5/servef_0.1.5_darwin_amd64.tar.gz"
      sha256 "e9176b452eb041c94201e1c9be2b6038eb044fcfd019999826bf840a04fe4b6f"
    end

    on_arm do
      url "https://github.com/flexdinesh/servef/releases/download/v0.1.5/servef_0.1.5_darwin_arm64.tar.gz"
      sha256 "c600c4712760f77d4921dea5887569f6e5261660d9a135451ba365346e48cb15"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/servef/releases/download/v0.1.5/servef_0.1.5_linux_amd64.tar.gz"
      sha256 "eb21866edd95b54aef4745d360c09d78dc4b38af4dee5546e5aaabd0f36d9628"
    end

    on_arm do
      url "https://github.com/flexdinesh/servef/releases/download/v0.1.5/servef_0.1.5_linux_arm64.tar.gz"
      sha256 "61169f1efb400970633d9964408c4e01befb66c400c1b02f4cc494522f6f2c20"
    end
  end

  def install
    bin.install "servef"
  end

  test do
    assert_match "servef #{version}", shell_output("#{bin}/servef --version")
  end
end
