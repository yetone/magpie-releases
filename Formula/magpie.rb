class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1158/magpie-cli-darwin-arm64"
      sha256 "d2aa30425029a76e468bf80956cf2ab56001d5bf1fb76041863e6794ba872111"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1158/magpie-cli-darwin-amd64"
      sha256 "104ce2b5144b3c5fabc3ac49cb004dbe3e782f9c3033d131565de554e5a28cd5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1158/magpie-cli-linux-arm64"
      sha256 "56f9c9c70396efc1c254602381efccc496bf5a174959384da428eb3777c6fa53"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1158/magpie-cli-linux-amd64"
      sha256 "418529eafacf5cfca0b564a1abe2a5fa601e59fba59b1d4cbd986cc1c41e1827"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
