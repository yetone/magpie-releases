class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2123/magpie-cli-darwin-arm64"
      sha256 "0d687ce5b7652453984b693687c7d3c88d93fd11ee099f2359fd4d902a5704b4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2123/magpie-cli-darwin-amd64"
      sha256 "8a381e1135e73240d029dad98a1b35d89e133d558859dad693fdddc5d03cc283"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2123/magpie-cli-linux-arm64"
      sha256 "c550f73237d538809f924c68028b1535a91c3f4229a8a2bc40d7591ac8802a7c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2123/magpie-cli-linux-amd64"
      sha256 "f25ce6b2fe6ce4cbd1507e287ca32f64b78fd0159278fc0bcad3b8ffe5b9cd12"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
