class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4749/magpie-cli-darwin-arm64"
      sha256 "6f9d64d1110e2cc706156725e7499be2509ac57a94a2a175b6d4f8192c559858"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4749/magpie-cli-darwin-amd64"
      sha256 "6848f0b6771e537f00ec901a02351600a7e116edaecbb1200204a35dcb178011"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4749/magpie-cli-linux-arm64"
      sha256 "1fd45040fb3f5b7874fbb1db007997a20eab925d82d59487b1c3ae83dc6382f2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4749/magpie-cli-linux-amd64"
      sha256 "126b0775a5a549ac777defa65c469b4c54987edf7786d419a34d1148948558f4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
