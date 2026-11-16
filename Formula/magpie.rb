class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4300/magpie-cli-darwin-arm64"
      sha256 "1671dcba416e1ff9de975302bb07c8f710dfb5bf393fb9d01d440c28340d3427"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4300/magpie-cli-darwin-amd64"
      sha256 "e76e6179db23edc276c483459ae8fa8408ced5f423f19cb3b3d070eefcae4e61"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4300/magpie-cli-linux-arm64"
      sha256 "975a210fd58a000fa3ac526d9f46b4ca2eb00e03199fee838d8819297150980d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4300/magpie-cli-linux-amd64"
      sha256 "509e49c4c3b5a704c43c5f86655fb027c835b35e6cea736660c4e4b33af29b06"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
