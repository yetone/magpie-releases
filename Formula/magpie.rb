class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5021/magpie-cli-darwin-arm64"
      sha256 "0ecf30f869d091caa4fcb4c995f07ce42b7a0b6a75727dff41a200827d285b3a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5021/magpie-cli-darwin-amd64"
      sha256 "5b53d5aa131e7d55f902acaeda0adb5ed45c07449b0ce2ced7e27d1c5839177d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5021/magpie-cli-linux-arm64"
      sha256 "e3666367e0f302f9aefa1ed793e2f4de71c8f994d81cbf35bab0b31c233de4d1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5021/magpie-cli-linux-amd64"
      sha256 "4ed241480ce5ffa93ceabb2552d043394840f962c620fd037ebc63bb683533b3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
