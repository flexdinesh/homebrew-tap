class Diffx < Formula
  desc "Review local Git changes in your browser"
  homepage "https://github.com/flexdinesh/diffx"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/diffx/releases/download/v0.2.2/diffx_0.2.2_darwin_amd64.tar.gz"
      sha256 "25c5fe2f02a82acaa011e807f2da7cd80f50c29b48ce5362b52ef65376d03432"
    end

    on_arm do
      url "https://github.com/flexdinesh/diffx/releases/download/v0.2.2/diffx_0.2.2_darwin_arm64.tar.gz"
      sha256 "8b6619ddefe574b65940d69fecb04b0d2a1b35a6d483b86e17640434e888a2c2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/diffx/releases/download/v0.2.2/diffx_0.2.2_linux_amd64.tar.gz"
      sha256 "019d328857ab124db8e350c152773239d5e7b02ea8c7ce125b3da74c51d3d81b"
    end

    on_arm do
      url "https://github.com/flexdinesh/diffx/releases/download/v0.2.2/diffx_0.2.2_linux_arm64.tar.gz"
      sha256 "13f4d890479119ae311b5d5eefdadcfebfb319f10ab4e425b534c25993ecf1f9"
    end
  end

  def install
    bin.install "diffx"
  end

  test do
    assert_match "diffx #{version}", shell_output("#{bin}/diffx --version")
  end
end
