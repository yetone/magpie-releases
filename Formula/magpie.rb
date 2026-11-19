class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4563/magpie-cli-darwin-arm64"
      sha256 "866056296492e4cddac52e39be992583054a22c68590b55e007b0edae15bd4c9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4563/magpie-cli-darwin-amd64"
      sha256 "c519e197855544b7816e2ca1123246a293677292f3e613b9f44b4ee5e021c0ac"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4563/magpie-cli-linux-arm64"
      sha256 "cc75d50952b3cd9e841570aacc9fd4751a507275c7f07fabb4f335cd2bd29d16"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4563/magpie-cli-linux-amd64"
      sha256 "1bd469e703c32e604e45612255571931d89c7077554432fbca3579b672b56bd1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
