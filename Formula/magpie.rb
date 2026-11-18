class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4420/magpie-cli-darwin-arm64"
      sha256 "f71659af5f0dda2a72138c57d2b8be564fd777c05142b7a0c6a2fc3662d2cabc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4420/magpie-cli-darwin-amd64"
      sha256 "d5174ae185aa13dee22984062a72c543dc61473fb382715fb5bcf5020f24b5df"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4420/magpie-cli-linux-arm64"
      sha256 "c07c6610d686db52a8174d6ffacb8835e4b78fd64548bac0b7f2d230502f2ccd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4420/magpie-cli-linux-amd64"
      sha256 "2c87106ca03c5d7e91f18021edea42380d59e14e3a7e209cd971161c7c919591"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
