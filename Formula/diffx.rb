class Diffx < Formula
  desc "Review local Git changes in your browser"
  homepage "https://github.com/flexdinesh/diffx"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/diffx/releases/download/v0.2.1/diffx_0.2.1_darwin_amd64.tar.gz"
      sha256 "ede626cc580e8e0acc2896c5458bc8fc5c68ee17cb240a7838403d8e504622eb"
    end

    on_arm do
      url "https://github.com/flexdinesh/diffx/releases/download/v0.2.1/diffx_0.2.1_darwin_arm64.tar.gz"
      sha256 "e788de80fd47887a1d2cbdfe4ec2b62533314a2615abb64218559dbaf9e4e78b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/diffx/releases/download/v0.2.1/diffx_0.2.1_linux_amd64.tar.gz"
      sha256 "0b4e6f2f6ba372e12e26a160dbb043dda4caaf207ec16acafaa7c07eccc13a08"
    end

    on_arm do
      url "https://github.com/flexdinesh/diffx/releases/download/v0.2.1/diffx_0.2.1_linux_arm64.tar.gz"
      sha256 "42e633193d50f01ce7e0491dbe46ae70372001dfc1b6c849d1dc128a746d9791"
    end
  end

  def install
    bin.install "diffx"
  end

  test do
    assert_match "diffx #{version}", shell_output("#{bin}/diffx --version")
  end
end
