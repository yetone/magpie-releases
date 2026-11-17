class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4356/magpie-cli-darwin-arm64"
      sha256 "5eb829641024d0c6855ad0f853bb53cf5640ff9fc3b3f2dd2c0ee181344d2309"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4356/magpie-cli-darwin-amd64"
      sha256 "f1f438527d2a476eb086218a2daaa48f42415a52885304fd2b31c35064c4775e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4356/magpie-cli-linux-arm64"
      sha256 "4ef31fe37f5b95db65d7b6c2967fe74728d764904281912c3420adadb451acab"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4356/magpie-cli-linux-amd64"
      sha256 "9f6980116bd68c4e01602682867b8f6f04934968b44d48695009a25dfa293b6d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
