class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4194/magpie-cli-darwin-arm64"
      sha256 "aacf4d431e0daeb3c71b67e6dad1c98ebbcc3d540d506f83bf21b54858121eef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4194/magpie-cli-darwin-amd64"
      sha256 "43707e91f837f1eeadcea934384c5c470571c19d6817484231791816b25bf14e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4194/magpie-cli-linux-arm64"
      sha256 "10ba3070f03c960201cb9ab5102848851f37e40cdaed000ddedce79bfaafb982"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4194/magpie-cli-linux-amd64"
      sha256 "27e5fe0ec0d49aaeaa569f1d2603e1863f8ef5d4dfc9c7bd016cbfd4cdb83274"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
