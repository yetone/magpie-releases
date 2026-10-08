class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1114/magpie-cli-darwin-arm64"
      sha256 "77b990e7d59a75b562be8c6e7f70c3099e6490ff8479eada08b99e80ba1cb240"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1114/magpie-cli-darwin-amd64"
      sha256 "ac089bce060411986eeeae09b1443deb6e521dcdac769d9da9c5707d5a1bd81e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1114/magpie-cli-linux-arm64"
      sha256 "0cf00bbf86f972626f48df2dc6b251ea5e344a704f369eb8e1b43069cdf7a3e2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1114/magpie-cli-linux-amd64"
      sha256 "4c0bf0eddbeaed05f83f09f931760292983430397d4d86d09e2ee2bdd6331ad3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
