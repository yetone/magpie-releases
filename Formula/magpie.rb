class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4880/magpie-cli-darwin-arm64"
      sha256 "7f38598fb1655acb8c996ecc278daf168412e331043e38b67d10ab846a64a94f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4880/magpie-cli-darwin-amd64"
      sha256 "bfdc1cba3c928c8bb3a062435791eb65acab86966019ceaac0a127fb61195bb0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4880/magpie-cli-linux-arm64"
      sha256 "996eba0a312df11820f578aa00446b3377831970045d32b47d7776ab8a2ac579"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4880/magpie-cli-linux-amd64"
      sha256 "9a3128e7fd00a1cc40705498d855a9c1fbf38bad0264d14942b301f508964bd5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
