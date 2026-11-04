class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2975/magpie-cli-darwin-arm64"
      sha256 "163e0d2f07c126574f49969cb62bad2bf23310f92e0c2d2f5d34d83ea005c10f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2975/magpie-cli-darwin-amd64"
      sha256 "5e18069ed3dec55d2434ec7d6bd3444afef9892815326cd898c1cb2b8a12525e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2975/magpie-cli-linux-arm64"
      sha256 "c90c868863dead6c9be66c58059c2bd3da9caa909f88b15641ac7e98176fdfe6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2975/magpie-cli-linux-amd64"
      sha256 "48fc89fd0681ed6323886315cbeb75b8a8353fe052c22f167bd822df26343962"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
