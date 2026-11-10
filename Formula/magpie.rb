class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3624/magpie-cli-darwin-arm64"
      sha256 "bac48965e9c42ce28f94f9453f460cc74c04a95d9752d6eff210df7b1245d925"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3624/magpie-cli-darwin-amd64"
      sha256 "6ee095d366a6cf727ead779403df2fc953ea30664823d6827bc4242c65d28875"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3624/magpie-cli-linux-arm64"
      sha256 "979404ee3ac714bd9874f163d79ead87c97f765c3fceb127fc02b3cb4fa9f5fd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3624/magpie-cli-linux-amd64"
      sha256 "0bc84fdbece90cdc88f08d45b64390b05ee13750eb1d68a0b1837d951b2e2abd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
