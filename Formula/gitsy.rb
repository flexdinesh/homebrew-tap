class Gitsy < Formula
  desc "Scan directories for Git repositories and show a compact status table"
  homepage "https://github.com/flexdinesh/gitsy"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.12/gitsy_0.1.12_darwin_amd64.tar.gz"
      sha256 "f7e6f9795f1fbe13c417e7de04f6113100a3a9276b3998fd36f6efea24fa3dc6"
    end

    on_arm do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.12/gitsy_0.1.12_darwin_arm64.tar.gz"
      sha256 "8fbba5cf8fb6e7a06956ad931c9e5b3ba8fce1aeb8c99bafb7e543a4159f6c38"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.12/gitsy_0.1.12_linux_amd64.tar.gz"
      sha256 "12dc3c24ccbc205b8747066675158c0537ecd822dda96d29bbd095f2ee486a96"
    end

    on_arm do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.12/gitsy_0.1.12_linux_arm64.tar.gz"
      sha256 "8859dfe36a64a012d3f22ac35d5a480fdeefda2c8dda2f6341e2c7fc64b9cefa"
    end
  end

  def install
    bin.install "gitsy"
  end

  test do
    assert_match "gitsy #{version}", shell_output("#{bin}/gitsy --version")
  end
end
