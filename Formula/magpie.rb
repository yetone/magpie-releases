class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.959/magpie-cli-darwin-arm64"
      sha256 "ade4af6f7326ca526d1923aed944958f1d76c4f99f8c83e1c825883fb24aefea"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.959/magpie-cli-darwin-amd64"
      sha256 "c8f5d6bee41396fa1c02a0b015d1fb14c04b9659c38c61142e244dd53fdfd5a1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.959/magpie-cli-linux-arm64"
      sha256 "f04333d4cb782ab32157736b9119584f9bb509cf1d21e24a032e29aef964c2d5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.959/magpie-cli-linux-amd64"
      sha256 "65f2251cd2b4c35ff95cbbf6d95e95bf6ce552801443d39011966d7c66ad5b22"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
