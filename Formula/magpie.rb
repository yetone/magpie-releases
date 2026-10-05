class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.936/magpie-cli-darwin-arm64"
      sha256 "94398aea5d0e43569b6cef9ae3580722b447aeb0b00d4a9e92ac435879e35746"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.936/magpie-cli-darwin-amd64"
      sha256 "d765368e680d2d3ca72e70c45257e9ac0b76eeb3e0ffc39f96b52ff996cbbccf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.936/magpie-cli-linux-arm64"
      sha256 "4b5a9cfcad2b504477730b19d535c8f11bb14afe0899ac36c9a4e3ed10fd09b9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.936/magpie-cli-linux-amd64"
      sha256 "adca11cd22318337883063f333dbcca0c97949daeb3b03c95a18a923bfe6125b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
