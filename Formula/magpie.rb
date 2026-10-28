class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1880/magpie-cli-darwin-arm64"
      sha256 "2385a238d71e7f3bcdb7a98996c15ef9bf597c07ad904f278d3ec7244380b964"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1880/magpie-cli-darwin-amd64"
      sha256 "71f9ae620910d0c88634789efc86465ab7449da3d0e46a41eca0de241cc4f2d8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1880/magpie-cli-linux-arm64"
      sha256 "05b21f027a79706facbc3e1b6029f0e8525016e8408bc4fe76a004009c105dcd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1880/magpie-cli-linux-amd64"
      sha256 "ca72d962f53b759848379898679e6ee59cafbfb23d348d631f74ffb821aa01d0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
