class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3348/magpie-cli-darwin-arm64"
      sha256 "7a1aa55d0327f11f9a170deff5f92037ce70489072c774e04452007d543ce42c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3348/magpie-cli-darwin-amd64"
      sha256 "bbf2ec87769b955180e0b73eeb08433be18c46f3590ff962073d5d9f4e980148"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3348/magpie-cli-linux-arm64"
      sha256 "d0c6c82587a4f7cfd5211ff3b3111a4e7e67f5bdc1a7be47a4fe2e9b7f70a632"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3348/magpie-cli-linux-amd64"
      sha256 "d4bd8bbc0a4592625286f12b922db59af01d9b19a712b8b09032eec408dbb110"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
