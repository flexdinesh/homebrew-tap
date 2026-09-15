class Servef < Formula
  desc "Serve and browse Markdown files from a local directory"
  homepage "https://github.com/flexdinesh/servef"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/servef/releases/download/v0.1.2/servef_0.1.2_darwin_amd64.tar.gz"
      sha256 "8022ccb42cf4c86ec6a252d3e5aebddadc09b32134f361576a33200e301e22c2"
    end

    on_arm do
      url "https://github.com/flexdinesh/servef/releases/download/v0.1.2/servef_0.1.2_darwin_arm64.tar.gz"
      sha256 "1b9b0be5601ec1ff6edc4dde40dfb4e495930e4b35939f628ef91aba33be60ca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/servef/releases/download/v0.1.2/servef_0.1.2_linux_amd64.tar.gz"
      sha256 "9d217c8ec17e1b1abc8b6b0a25fbc22e936a366bc7996851629603a9632f9bcb"
    end

    on_arm do
      url "https://github.com/flexdinesh/servef/releases/download/v0.1.2/servef_0.1.2_linux_arm64.tar.gz"
      sha256 "b7c961508eff763da97c4da88646be1d183cd5657906a5ba0acfd3f2f4da328c"
    end
  end

  def install
    bin.install "servef"
  end

  test do
    assert_match "servef #{version}", shell_output("#{bin}/servef --version")
  end
end
