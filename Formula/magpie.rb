class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1834/magpie-cli-darwin-arm64"
      sha256 "143c974df12b72aa3cb1fd4300e8f35748cb10f305a5130434aa7d41b124d725"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1834/magpie-cli-darwin-amd64"
      sha256 "0057af3a3021695f8e983dc94b43610851840712d4487dd03f34aaef93a9423c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1834/magpie-cli-linux-arm64"
      sha256 "8a1ba9d63223dc360cd679990f3cbbdc31d289456b18e58a5fe2affeeb2f3722"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1834/magpie-cli-linux-amd64"
      sha256 "b12aad3c3d407b1806ef60f13d0baf36099ba6b6338f31ff1994a396c767ead9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
