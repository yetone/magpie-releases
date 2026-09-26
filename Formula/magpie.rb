class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.142/magpie-cli-darwin-arm64"
      sha256 "1a0c8740c55cb384b82f8d0fb55616464903129829b373bcdc420648a029bee2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.142/magpie-cli-darwin-amd64"
      sha256 "b13b46e8f7a0528255111f40821ab3f1b3a7520e5b53799dba996aef69b41cfb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.142/magpie-cli-linux-arm64"
      sha256 "91f55a4cf262e4826897a118e5dcc819b0a14569dbc8df4db4e6b15a36a000e7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.142/magpie-cli-linux-amd64"
      sha256 "6f230aede9e4981d3c8537dc8b5eb173ce45234c6f27710e8afcf28b13c682d7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
