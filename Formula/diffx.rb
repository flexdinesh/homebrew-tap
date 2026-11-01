class Diffx < Formula
  desc "Review local Git changes in your browser"
  homepage "https://github.com/flexdinesh/diffx"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/diffx/releases/download/v0.2.5/diffx_0.2.5_darwin_amd64.tar.gz"
      sha256 "74d13b021fbbe8f1a13958a5c258c4fa056d83fc8a884bc6bf87e513f6611fab"
    end

    on_arm do
      url "https://github.com/flexdinesh/diffx/releases/download/v0.2.5/diffx_0.2.5_darwin_arm64.tar.gz"
      sha256 "d62108efb8e15ffb276c01d0a66a760514458d57038e17f2c4be3c595b1a19a2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/diffx/releases/download/v0.2.5/diffx_0.2.5_linux_amd64.tar.gz"
      sha256 "dd4f580dbcc8be1f8db1fc48fa15aa9d451cf703f483833bfcd3dd17655649dc"
    end

    on_arm do
      url "https://github.com/flexdinesh/diffx/releases/download/v0.2.5/diffx_0.2.5_linux_arm64.tar.gz"
      sha256 "390690d92509573a2b8af1e1eeb246d1fe153db018f964a14a5f37e80de594c6"
    end
  end

  def install
    bin.install "diffx"
  end

  test do
    assert_match "diffx #{version}", shell_output("#{bin}/diffx --version")
  end
end
