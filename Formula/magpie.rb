class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3321/magpie-cli-darwin-arm64"
      sha256 "97a1a7b18c38786fdd026dc40ff6c278c7aceeece423a7e02cef9aea418ae7bc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3321/magpie-cli-darwin-amd64"
      sha256 "74a7895afc14de113b02bf196d8cc84f5ee53e5095179bda18dc49fd7f91c82b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3321/magpie-cli-linux-arm64"
      sha256 "44b72e982dec0cfddbea0ff0c7e8c4d709b23cf7f6b839f3b763ba550419d046"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3321/magpie-cli-linux-amd64"
      sha256 "1bd6c41a504be118572900dc416aa92a729da0ac87f80d1064e0ab89d693e34f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
