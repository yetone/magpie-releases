class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3245/magpie-cli-darwin-arm64"
      sha256 "b95c5d20b4a4d95d0780bd0ac7ed1a5957b145bd7bdec161af292b22736f619a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3245/magpie-cli-darwin-amd64"
      sha256 "a8f0c6f264572fcf0d498f96fabd5b78b9c9922a3ce78bd9edf62deab38d8968"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3245/magpie-cli-linux-arm64"
      sha256 "572a6d6345c99d72d8ddc5e016d132d7b8046918cddec712a5b1471464e9b660"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3245/magpie-cli-linux-amd64"
      sha256 "ebfdfb2826dc706fa96e132161dfb0749e590563a0cd0ec12179a2a6362c77e3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
