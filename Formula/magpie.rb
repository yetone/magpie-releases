class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2829/magpie-cli-darwin-arm64"
      sha256 "3b23152594390e1bab7d6b3d48283b7c79b8b5cf7c53cd5db624e7685a5b9db9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2829/magpie-cli-darwin-amd64"
      sha256 "e62f9bf7ba6617960151d3b4527d13cbe1bd17979268c6799b9d093ec47130cf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2829/magpie-cli-linux-arm64"
      sha256 "4a72011348f5b2ee58e0145e69fdac04ec32ac94cce8a805ce910033e0cf8133"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2829/magpie-cli-linux-amd64"
      sha256 "739533cfca97ce4f9f301f298ad190cc35eb8eefd4f00ed8e4516e2ed476792f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
