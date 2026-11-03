class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2792/magpie-cli-darwin-arm64"
      sha256 "7f989ed507c976f3b156d111e6a7d9858a286a4a0e297a7180c5716b22e6f73f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2792/magpie-cli-darwin-amd64"
      sha256 "9bb37274632d35d2d84f392670adbb1f2ac66d8d32c3985aaa0c02e38936c19b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2792/magpie-cli-linux-arm64"
      sha256 "0d49e00fbb2099ed0e9e800255dbe3cf2d9fab9b35e81cce2043a662c6e9e73a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2792/magpie-cli-linux-amd64"
      sha256 "4e7947217ff46663326c627f53c0a5393be5f10cadab91dabf2fd3fb03f8fbe5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
