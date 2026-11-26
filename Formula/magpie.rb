class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4859/magpie-cli-darwin-arm64"
      sha256 "481196454d383dfb05ec25dede9e02624addeda93bfd0f5e21ee69a1268e47b4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4859/magpie-cli-darwin-amd64"
      sha256 "ba0c0993d2b87f8e67dec5b810669cee8805adb70430f8459ef6f2d1af031157"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4859/magpie-cli-linux-arm64"
      sha256 "072f923688cd8a274366e10b7c936625e2d3d2f7cf150ced19f8c15faaf1c753"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4859/magpie-cli-linux-amd64"
      sha256 "92e8d68bfca5f80aefb286b456610ea096a04741e5c9fdb07433cac1ca7fea6e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
