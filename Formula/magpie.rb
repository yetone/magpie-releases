class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3216/magpie-cli-darwin-arm64"
      sha256 "3be94875db80c7ddb6cc235700e9b0519f9908386fce83fe6615c517c76903e2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3216/magpie-cli-darwin-amd64"
      sha256 "4c0371e6d34811d73098cafff1357e9933d3420b01c9478567152d37051144b3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3216/magpie-cli-linux-arm64"
      sha256 "273e677271ba0d54a83f0f46ea71deeed108d864a6edd4430164c110a8b6aca1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3216/magpie-cli-linux-amd64"
      sha256 "dcbbdd61b03f61fde378d0200c196bc6bc72021a908ab865fe68366e81d2c4cc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
