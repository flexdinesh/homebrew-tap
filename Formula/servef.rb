class Servef < Formula
  desc "Browse local files and git changes in your browser"
  homepage "https://github.com/flexdinesh/servef"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/servef/releases/download/v0.1.6/servef_0.1.6_darwin_amd64.tar.gz"
      sha256 "49fa9b9a236c20bf933dd734d1e68f7b34621cf0a1062340917829bc2fdae19b"
    end

    on_arm do
      url "https://github.com/flexdinesh/servef/releases/download/v0.1.6/servef_0.1.6_darwin_arm64.tar.gz"
      sha256 "5b77a7da3538d8a797051cc752ca5737dda6ee0e48f0966ef23766344a055136"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/servef/releases/download/v0.1.6/servef_0.1.6_linux_amd64.tar.gz"
      sha256 "9a06f29d797ba10bed64e3f7c0e9ec5d5e678a3ec880f66412d7b71212c36191"
    end

    on_arm do
      url "https://github.com/flexdinesh/servef/releases/download/v0.1.6/servef_0.1.6_linux_arm64.tar.gz"
      sha256 "74d4c3b79d6d865a7fec5971fc3e3e3cccc27c645edd4fc45fe752d17b6cc886"
    end
  end

  def install
    bin.install "servef"
  end

  test do
    assert_match "servef #{version}", shell_output("#{bin}/servef --version")
  end
end
