class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3918/magpie-cli-darwin-arm64"
      sha256 "d001ba9c310567f94fdf3cccb3869f61cf09be8bdce6836154e66480a1e5676b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3918/magpie-cli-darwin-amd64"
      sha256 "11d5c3c361da7d475a8de02457da4ac6529d8e5cfc1024f427c8b365bd3a7ab5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3918/magpie-cli-linux-arm64"
      sha256 "0a0b495f989efc05e2645e0031841fe9e9bbace748515038fc30077a735f15a8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3918/magpie-cli-linux-amd64"
      sha256 "2ecf68f5ca30f135da1c494eb955d7630b7d2e224b2520e4ef684fb06ceaa836"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
