class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3294/magpie-cli-darwin-arm64"
      sha256 "5931b7076b7fab2b3bc43665b4cb92868cfa11c744f89f674e091b048eab16a2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3294/magpie-cli-darwin-amd64"
      sha256 "c780683cca6376914911e409d2b650e63a37892b3db06902136cbac6397352ee"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3294/magpie-cli-linux-arm64"
      sha256 "8f6f99917131036c04882b6b3a49541fcd6dec0aeec79821c29337de0bdcfb8c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3294/magpie-cli-linux-amd64"
      sha256 "fba6e4ed6638469f92bb4ac5d8fee0a7bdb2d53aafbc89db77bf220f9c21b9cd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
