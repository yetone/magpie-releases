class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4931/magpie-cli-darwin-arm64"
      sha256 "0a457b2d1ed494626da456bc8bdc4056ba5db3d8965e38195d606cbbcdfa2c39"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4931/magpie-cli-darwin-amd64"
      sha256 "28d77ec44f3b2eb2edf5d774b30222ed8e44f33e3759023eaf1c9dc5cbf49d4e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4931/magpie-cli-linux-arm64"
      sha256 "53d1a32f59df01e40f9588e762463f2b9129eafebea7f089ef3ab9e12d9a90cd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4931/magpie-cli-linux-amd64"
      sha256 "60e3917b01dc8d90397648b65418471e5883f07a896e970a625a940b66311072"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
