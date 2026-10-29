class Diffx < Formula
  desc "Review local Git changes in your browser"
  homepage "https://github.com/flexdinesh/diffx"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/diffx/releases/download/v0.2.3/diffx_0.2.3_darwin_amd64.tar.gz"
      sha256 "2e888f749d1f787dd2566ffc159061f64104bb4b990170d3100d96de76f4d898"
    end

    on_arm do
      url "https://github.com/flexdinesh/diffx/releases/download/v0.2.3/diffx_0.2.3_darwin_arm64.tar.gz"
      sha256 "09e4252fcbfac78acb8d213ace3c7d616fc51c85176aa0384808890f3d63a58f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/diffx/releases/download/v0.2.3/diffx_0.2.3_linux_amd64.tar.gz"
      sha256 "08980a99053ad49cf25460869c8d47bf698f0b3dcc61531b08da16a1f63fd75a"
    end

    on_arm do
      url "https://github.com/flexdinesh/diffx/releases/download/v0.2.3/diffx_0.2.3_linux_arm64.tar.gz"
      sha256 "a4a3ed4a69563d4160e13ac91537bd8c1b85d082b3f5fc1d8d7445169e268cce"
    end
  end

  def install
    bin.install "diffx"
  end

  test do
    assert_match "diffx #{version}", shell_output("#{bin}/diffx --version")
  end
end
