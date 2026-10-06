class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1074/magpie-cli-darwin-arm64"
      sha256 "6f6a64b6c7b3bbf86a21f874e91f9ce9b1aeea25f9e2f62a2dc9dc662093eef1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1074/magpie-cli-darwin-amd64"
      sha256 "0c540dec4f240d8dd0b5f2c22343a8d3dfd0d45c7afd82828a6ecde9d61df434"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1074/magpie-cli-linux-arm64"
      sha256 "20828fd91a7c878602f6790efdf4b2a7b31ab54e0b884654cce69b0ab481ba9b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1074/magpie-cli-linux-amd64"
      sha256 "0766f0a4d00fcbe6f98e898726bd2b48630e8838e43b20b3e43e387aff6ec818"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
