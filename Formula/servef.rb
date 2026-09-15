class Servef < Formula
  desc "Serve and browse Markdown files from a local directory"
  homepage "https://github.com/flexdinesh/servef"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/servef/releases/download/v0.1.1/servef_0.1.1_darwin_amd64.tar.gz"
      sha256 "905195ffed9b1d33df2c67daefa5e7b1b524b8e6d8ebc4d45a4f013e9aa46ad7"
    end

    on_arm do
      url "https://github.com/flexdinesh/servef/releases/download/v0.1.1/servef_0.1.1_darwin_arm64.tar.gz"
      sha256 "48f3e4cd0327642bef1f9c5fef49dba8acacaa41f49b1b29d9f129266e51a960"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/servef/releases/download/v0.1.1/servef_0.1.1_linux_amd64.tar.gz"
      sha256 "bba0639d23ef9d2d67e9953898a238836045dd7bd1f6782ac1f3bf641cb6491f"
    end

    on_arm do
      url "https://github.com/flexdinesh/servef/releases/download/v0.1.1/servef_0.1.1_linux_arm64.tar.gz"
      sha256 "566f9f99a2548920e4cc9c6ad45b26dfb793307e6bdb19ed3d8a3da3d1323024"
    end
  end

  def install
    bin.install "servef"
  end

  test do
    assert_match "servef #{version}", shell_output("#{bin}/servef --version")
  end
end
