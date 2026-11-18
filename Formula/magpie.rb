class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4422/magpie-cli-darwin-arm64"
      sha256 "4053a3ac58787bd21d1fbed2787dcccb1f599e71e725ba1f1998f55cdf95cabd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4422/magpie-cli-darwin-amd64"
      sha256 "aeb0ee25a88717fbd95f913b772a0850041ea9544e756f62f3398fd776ffaae7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4422/magpie-cli-linux-arm64"
      sha256 "3aa472b8b22d3eed0ae6f7c31fd683a1d2a2dbd9f3e8310bff0ece4ddb6f7070"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4422/magpie-cli-linux-amd64"
      sha256 "315c7482c53a210eb8851846fac8f5fb23000364696c457d1fd1e134033fb625"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
