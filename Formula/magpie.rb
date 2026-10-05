class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1007/magpie-cli-darwin-arm64"
      sha256 "43bf53f9f5337758f8ad9a4c1886fa7c954010648761b7ba833c3d8a2f7f4a86"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1007/magpie-cli-darwin-amd64"
      sha256 "be81db9640b897ad4c020d379bc9501b775f5a07b7a2d8264f49ccea86835bdc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1007/magpie-cli-linux-arm64"
      sha256 "9837707f9d728919777bf7036494c64f4e3dcf4efe1102ed64e1d591adf03ab6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1007/magpie-cli-linux-amd64"
      sha256 "699474ef55c5b8e6cfe72b65b7bc61441e50d93f526be5ac685f930b47d6c52f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
