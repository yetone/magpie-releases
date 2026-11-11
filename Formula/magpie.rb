class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3743/magpie-cli-darwin-arm64"
      sha256 "579cd6fea670d3fc8fbf580e50259a91cb5cfdfbf3ae899b62fb31e47f0a2461"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3743/magpie-cli-darwin-amd64"
      sha256 "9c01c2e17610631767b858f20801af09995d152d4238959ceb666ba942c40b81"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3743/magpie-cli-linux-arm64"
      sha256 "8dd67d3c1eea408be7e7f1f47fc5579b8eb040f2533092f0d9466fb3c085dade"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3743/magpie-cli-linux-amd64"
      sha256 "2cb5a966e4042f0c9e866bf5afb2baf79ecd08a2ab6f9b061be04cc6016ded06"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
