class Servef < Formula
  desc "Serve and browse Markdown files from a local directory"
  homepage "https://github.com/flexdinesh/servef"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/servef/releases/download/v0.1.0/servef_0.1.0_darwin_amd64.tar.gz"
      sha256 "99c572a658c45837052780f3346cbde1cc35a051042c721e9ddbe444d93d40bb"
    end

    on_arm do
      url "https://github.com/flexdinesh/servef/releases/download/v0.1.0/servef_0.1.0_darwin_arm64.tar.gz"
      sha256 "37b4534b9c21ca94e68fd162243df6f7223ada7672c14a6e1b16db0a889ce4f2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/servef/releases/download/v0.1.0/servef_0.1.0_linux_amd64.tar.gz"
      sha256 "165369bd29e226c2433d378428d81ad2fbfc8f75a4d2ef5caba729522ed6c854"
    end

    on_arm do
      url "https://github.com/flexdinesh/servef/releases/download/v0.1.0/servef_0.1.0_linux_arm64.tar.gz"
      sha256 "5fd4a9e61d60380a63748d5c9741e43276dbf0fa813bd7997cb00f179e3bba0c"
    end
  end

  def install
    bin.install "servef"
  end

  test do
    assert_match "servef #{version}", shell_output("#{bin}/servef --version")
  end
end
