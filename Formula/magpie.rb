class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4303/magpie-cli-darwin-arm64"
      sha256 "75199f2b89191f03fd8c493eab83e953ad96cb9658a6f708ea952a325ca17714"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4303/magpie-cli-darwin-amd64"
      sha256 "94cccdea0b4adea106998c9d4ddbc40f1def368eeb9c089271cfbfe68b955d5c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4303/magpie-cli-linux-arm64"
      sha256 "af4c0324ba5cf1878e1058e5ef158b07d10bbc268a42ce5f05b3778cb81ec58a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4303/magpie-cli-linux-amd64"
      sha256 "96955593700f13265655df54d80a47aab6bf05a7bec5e1b088e58904d202565e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
