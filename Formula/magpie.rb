class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2462/magpie-cli-darwin-arm64"
      sha256 "e5b8c7e630f0b096e976a46bddfb2c8405d749eda52b099c41eeb3aead324280"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2462/magpie-cli-darwin-amd64"
      sha256 "2c2e44d5e4557a888a615f968ef80a5d40b2b255a3d2da92d9e741925d05d97a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2462/magpie-cli-linux-arm64"
      sha256 "a9be118025fbb2903a08468d00fa869eb3e66e84afac36c99430389fe6f41721"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2462/magpie-cli-linux-amd64"
      sha256 "7bdb5b1b1a343a9b89f49ee96c5a5c8e85ce22f2bc042af6b31d72f076d5a687"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
