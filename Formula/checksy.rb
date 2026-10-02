class Checksy < Formula
  desc "Internet connectivity checker with HTTP, ping, DNS, and IP diagnostics"
  homepage "https://github.com/flexdinesh/checksy"
  url "https://github.com/flexdinesh/checksy/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "660549ef6c6d20d9ae325b54dea4e449ed4cd01b83ccc54942c1620556219026"

  depends_on "go" => :build

  def install
    ENV["CGO_ENABLED"] = "0"
    ldflags = "-X github.com/flexdinesh/checksy/internal/version.Version=#{version}"
    system "go", "build", *std_go_args(ldflags:), "./cmd/checksy"
  end

  test do
    assert_match "checksy #{version}", shell_output("#{bin}/checksy --version")
    assert_match "Usage: checksy", shell_output("#{bin}/checksy --help")
  end
end
