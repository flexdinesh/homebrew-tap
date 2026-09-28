class Servef < Formula
  desc "Serve and browse Markdown files from a local directory"
  homepage "https://github.com/flexdinesh/servef"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/servef/releases/download/v0.1.4/servef_0.1.4_darwin_amd64.tar.gz"
      sha256 "6accaf0056ab5b041c5b41518f24be0c368735d69756e21eed7d66ca69a3223c"
    end

    on_arm do
      url "https://github.com/flexdinesh/servef/releases/download/v0.1.4/servef_0.1.4_darwin_arm64.tar.gz"
      sha256 "0dccca6c09eebffabe9ea420136c933d57d17d6c87a9b732059f8c463644974f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/servef/releases/download/v0.1.4/servef_0.1.4_linux_amd64.tar.gz"
      sha256 "39a7185c5eafde7109c80a31e2d437b7c7cb1ec5282a58abeb4016fa5498c377"
    end

    on_arm do
      url "https://github.com/flexdinesh/servef/releases/download/v0.1.4/servef_0.1.4_linux_arm64.tar.gz"
      sha256 "1981a90fb340e7693b9f37570e4ca4c2b3e09405b1bbe421455935283d96ca2d"
    end
  end

  def install
    bin.install "servef"
  end

  test do
    assert_match "servef #{version}", shell_output("#{bin}/servef --version")
  end
end
