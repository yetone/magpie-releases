class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1903/magpie-cli-darwin-arm64"
      sha256 "578ed2a5d2ad0db6de39d79d9145b4b70b7d334480f886acf889b35c2ac1864a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1903/magpie-cli-darwin-amd64"
      sha256 "e44ceb460150a1314b4d991652bdf3e61333041dd4034d5df137038c1d5e2585"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1903/magpie-cli-linux-arm64"
      sha256 "5de9aa861385b524773e96f18606198a2a8c5642e1ee530ab69158d4dd075301"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1903/magpie-cli-linux-amd64"
      sha256 "3e2081bce9f3e2f33f20869e5d4b76dc496dfb41a0953735c21715c55eca9d5c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
