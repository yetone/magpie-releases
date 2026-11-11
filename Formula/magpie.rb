class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3739/magpie-cli-darwin-arm64"
      sha256 "38a28cef5c68f4482cce3af9836cec191bfe2ceaca0ac0b452fbfb5d29c497db"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3739/magpie-cli-darwin-amd64"
      sha256 "94cac12f4eade92930a2140279bf721c063d0718d9fcf54fb058a63ff2183fe4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3739/magpie-cli-linux-arm64"
      sha256 "2fa2f0a81ecf9e2f68f946f92d3e6d4387f898a220216a99f42766b2012cdf2f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3739/magpie-cli-linux-amd64"
      sha256 "a162a5d2587894c60febb5df5e606d618bbb6b39b51ca791bf0ff67d7da14759"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
