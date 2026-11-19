class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4516/magpie-cli-darwin-arm64"
      sha256 "3dc74d01b1862a6f7abf5b719ae0590d03f742e867b4020b93ea60f547616625"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4516/magpie-cli-darwin-amd64"
      sha256 "235f71b099de3a3f0f6e7e85f16be472c9021d5e6aca329d52d90b8a58fa9328"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4516/magpie-cli-linux-arm64"
      sha256 "ab675cb1125a85de662fd6b2582e8f5e58d9e69de7cfee57325676eb11275af3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4516/magpie-cli-linux-amd64"
      sha256 "5c25ed6e79c19a0cf5b1d9a063eba4b7c6f2758727b5944782159c8c1776f5ef"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
