class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3330/magpie-cli-darwin-arm64"
      sha256 "be35eb20190977b6abf22972bd96ec5187130a7a0558b47c361ad967063ee830"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3330/magpie-cli-darwin-amd64"
      sha256 "1c81530f97e6c0b070c32debe33e8daeef0e87786035ad9d33236eb6c0b6c62c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3330/magpie-cli-linux-arm64"
      sha256 "c68ee3d1237c186adb596f454cada34ce6869a40bd2a44e53d56739bce23b778"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3330/magpie-cli-linux-amd64"
      sha256 "42182295a53c6129e94e24143dd02dfdfbe4dffc175e6da4c0cee5cc6dca4be4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
