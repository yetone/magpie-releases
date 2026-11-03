class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2842/magpie-cli-darwin-arm64"
      sha256 "5eab963fe7ee2a5271a539969d1be4a131eb1ca77cee4fcd8456ffff52273d7d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2842/magpie-cli-darwin-amd64"
      sha256 "41cda309d1326f40cdaf6f26ea0023c467a022e6e971ce6b2770254fdc82a15a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2842/magpie-cli-linux-arm64"
      sha256 "2e27806069071286aed633dc2d9aeade00d9f231353290c19e659141e2c8ef33"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2842/magpie-cli-linux-amd64"
      sha256 "e1208ced0a7e87a02c84579453dda00a3958c51f7c5c5f1fb90f1d778a87d1fa"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
