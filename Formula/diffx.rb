class Diffx < Formula
  desc "Review local Git changes in your browser"
  homepage "https://github.com/flexdinesh/diffx"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/diffx/releases/download/v0.2.0/diffx_0.2.0_darwin_amd64.tar.gz"
      sha256 "4ad72c64f4ca39b5bf5b7f33c5b356d2a7dd833c4c912975659a1c0f0a99f97b"
    end

    on_arm do
      url "https://github.com/flexdinesh/diffx/releases/download/v0.2.0/diffx_0.2.0_darwin_arm64.tar.gz"
      sha256 "17666171dc680425c4b2fadb9e998eada57bf5296dc01b59415fc9db1d6b2be0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/diffx/releases/download/v0.2.0/diffx_0.2.0_linux_amd64.tar.gz"
      sha256 "0efa5c9e6d7d7a8a7a8bcc8e7b2d5954bd917365ca3fa26466a830f5e25ffe50"
    end

    on_arm do
      url "https://github.com/flexdinesh/diffx/releases/download/v0.2.0/diffx_0.2.0_linux_arm64.tar.gz"
      sha256 "d3c9092fa89a46a0e93426d0fbce035370462b8dbf72ac7076f7f133935ded8f"
    end
  end

  def install
    bin.install "diffx"
  end

  test do
    assert_match "diffx #{version}", shell_output("#{bin}/diffx --version")
  end
end
