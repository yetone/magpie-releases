class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1161/magpie-cli-darwin-arm64"
      sha256 "48cb61e51424f75411c5aa874f3f4fe62c9f337de6af30b7fceda7dca81daa8b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1161/magpie-cli-darwin-amd64"
      sha256 "f3f99612a65af10dcc219b3ae8d28f5ef1658246366da2effb86774f83e45a46"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1161/magpie-cli-linux-arm64"
      sha256 "de83ad451a9e7a4b01aff1700c17412fd31ac6e34c27baeab2377d9cfbc7a3d7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1161/magpie-cli-linux-amd64"
      sha256 "73f5dcedd89dfb7c93052d685d9f083379e68d2854bd5be7ef34e14377f63e64"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
