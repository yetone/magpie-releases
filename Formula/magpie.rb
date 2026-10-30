class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2155/magpie-cli-darwin-arm64"
      sha256 "c2d295bb1f1f07e56ad46e1b19251ffd8886ecdd9e4cc500f08731652847e1ff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2155/magpie-cli-darwin-amd64"
      sha256 "e9f3ec513be614a42612fce10745f7df2a96085426e4d6cc42d3602ecc7edeb7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2155/magpie-cli-linux-arm64"
      sha256 "4602b48cb2e1194407d845232d9e42638307be01af040c356874ad90919f8fb7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2155/magpie-cli-linux-amd64"
      sha256 "b9fc8d16e63e8864d5ca48d191bc7bbd28f6698fcfe16427af16c83da813e4b6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
