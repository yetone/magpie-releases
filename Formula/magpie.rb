class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4510/magpie-cli-darwin-arm64"
      sha256 "2d7bd1c0f216a0c829854eb2476a37d71e420e2baf52d67d6c45d15edb86aa66"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4510/magpie-cli-darwin-amd64"
      sha256 "a6c44db6f811fb451ee656cfabf1630faf406529f3a4e2b03eed84a4015ef572"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4510/magpie-cli-linux-arm64"
      sha256 "33680a37e42f9cd296f93e10ec335678bf932173d63a5e1a9f6e15019c99ba7b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4510/magpie-cli-linux-amd64"
      sha256 "313f04b28c9a5728a502fe03ae9adfadebcce1355396f4009e42f46388428d72"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
