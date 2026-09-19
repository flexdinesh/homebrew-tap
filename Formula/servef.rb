class Servef < Formula
  desc "Serve and browse Markdown files from a local directory"
  homepage "https://github.com/flexdinesh/servef"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/servef/releases/download/v0.1.3/servef_0.1.3_darwin_amd64.tar.gz"
      sha256 "61a5509136d5d40e17c9facd1f3a534d8d2f63dcc2c79d49f97cb82262126c33"
    end

    on_arm do
      url "https://github.com/flexdinesh/servef/releases/download/v0.1.3/servef_0.1.3_darwin_arm64.tar.gz"
      sha256 "55dbd13580018457ae85f794bce0d0d0ce79ad898081dd3b2843583f7b6a09d5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/servef/releases/download/v0.1.3/servef_0.1.3_linux_amd64.tar.gz"
      sha256 "0f170c0c478160a90f2205f67afc03c1e2dc92cb65bdd1a993b3a9372854c036"
    end

    on_arm do
      url "https://github.com/flexdinesh/servef/releases/download/v0.1.3/servef_0.1.3_linux_arm64.tar.gz"
      sha256 "bdca95a21a17f5f44ed7af2ea4625820625cee15ae7b1dd5028609388dc05df7"
    end
  end

  def install
    bin.install "servef"
  end

  test do
    assert_match "servef #{version}", shell_output("#{bin}/servef --version")
  end
end
