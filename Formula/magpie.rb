class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4980/magpie-cli-darwin-arm64"
      sha256 "b549554df03f7a49d465a908ef2f629646eae1455af34c46b2390c7a4d2fe143"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4980/magpie-cli-darwin-amd64"
      sha256 "836889385c4270fb2e0b25a7310b48499942d09a325bad4b903cb7197740d2dc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4980/magpie-cli-linux-arm64"
      sha256 "da98cf4ffe827c2892efb6b1d5b3619e8e16a9e8bcec54a1a07fddce1b71435c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4980/magpie-cli-linux-amd64"
      sha256 "8fc310681921d3e1a78c6919ead1374727e042f1d6ae1ea3f118b13970beae0e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
