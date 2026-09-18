class Gitsy < Formula
  desc "Scan directories for Git repositories and show a compact status table"
  homepage "https://github.com/flexdinesh/gitsy"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.2/gitsy_0.1.2_darwin_amd64.tar.gz"
      sha256 "ff1b25384b5e561126f2532cc04b2105beb0e25bb998a366c78e895770678ab0"
    end

    on_arm do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.2/gitsy_0.1.2_darwin_arm64.tar.gz"
      sha256 "5dd771c572bf3048cbb192c83c2b9f007a2d8bb0f9a93a867c86770d55e8f278"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.2/gitsy_0.1.2_linux_amd64.tar.gz"
      sha256 "b293a70bf3801fa78de748e4c6420fddc75794077945df04a12bb5e0a905c293"
    end

    on_arm do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.2/gitsy_0.1.2_linux_arm64.tar.gz"
      sha256 "971c6600f4fe80036266c71f7a689a6b211dc8847710dce2ffacb8b5e05e2d22"
    end
  end

  def install
    bin.install "gitsy"
  end

  test do
    assert_match "gitsy #{version}", shell_output("#{bin}/gitsy --version")
  end
end
