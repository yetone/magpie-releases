class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.148/magpie-cli-darwin-arm64"
      sha256 "f5389e476557d58bd1fbfeff152d570870a7313b982894d0bc6fa5a0b30a6e35"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.148/magpie-cli-darwin-amd64"
      sha256 "a146f4b7089da26cbbff369add8665e7c295b060690b92c695c4996f852a64f1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.148/magpie-cli-linux-arm64"
      sha256 "3d6f827abacd8d8c4e5ce994cb1b730ca2d047e4ffa583b83b3c7929d8b23d41"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.148/magpie-cli-linux-amd64"
      sha256 "de3ff08db86388331f6607d774ce27fb119c525229aa1b80f2dfd215f0c5d905"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
