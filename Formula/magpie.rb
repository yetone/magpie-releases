class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3814/magpie-cli-darwin-arm64"
      sha256 "68a237a8a721fcd0517d2a3644840c939795177bac5bb510ad731173f307f5b7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3814/magpie-cli-darwin-amd64"
      sha256 "452e919411a10dc59198e993f55dc480078fffb5f4500b3fd72d23a826c305e2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3814/magpie-cli-linux-arm64"
      sha256 "16c29aebebcf3bce48d07aed877220c2e5944b841eeb70f700a4cae895918a38"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3814/magpie-cli-linux-amd64"
      sha256 "449a3e3fab78b017f47fdfaffeea752f312dab61b9f60ef0903e5c553a12655e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
