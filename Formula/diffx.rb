class Diffx < Formula
  desc "Review local Git changes in your browser"
  homepage "https://github.com/flexdinesh/diffx"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/diffx/releases/download/v0.2.4/diffx_0.2.4_darwin_amd64.tar.gz"
      sha256 "2d0768a5dbafc873d9b6b4042778dfaa3b7160626acb43601aa3935682c44b65"
    end

    on_arm do
      url "https://github.com/flexdinesh/diffx/releases/download/v0.2.4/diffx_0.2.4_darwin_arm64.tar.gz"
      sha256 "9d27c691230f7145751b8274daeb38322682434ba69aef5994ffefecf86ad59f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/diffx/releases/download/v0.2.4/diffx_0.2.4_linux_amd64.tar.gz"
      sha256 "e7f8010dad6be8bc6549928ad66910a1f8a929b523df366e89f83ec8ddc0be8e"
    end

    on_arm do
      url "https://github.com/flexdinesh/diffx/releases/download/v0.2.4/diffx_0.2.4_linux_arm64.tar.gz"
      sha256 "4838a409287e834f8e77dd323fe645004a34c543dd57054df1ad7af3bdeaf561"
    end
  end

  def install
    bin.install "diffx"
  end

  test do
    assert_match "diffx #{version}", shell_output("#{bin}/diffx --version")
  end
end
