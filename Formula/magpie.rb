class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4443/magpie-cli-darwin-arm64"
      sha256 "390968f224b94e72d7370820c0e26e0c041d8716deb34c198ff9863da17d9a20"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4443/magpie-cli-darwin-amd64"
      sha256 "4cdaf43e4c6a70755975691f4269ae30aa2f0294ada0ba8adfab3065ac648365"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4443/magpie-cli-linux-arm64"
      sha256 "4bfc4d8fe59eb13c0eef2cbdebeb51d4372a91d37174a1f444ec41ab9639a7e5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4443/magpie-cli-linux-amd64"
      sha256 "deb459e3773ff0d3da6feddbb556242adebac45ad52d0b25b8fdf082a5483c8a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
