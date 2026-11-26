class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4861/magpie-cli-darwin-arm64"
      sha256 "6297deafec6a9161dbcda237432c01e18a313b87326ee218b994c1ffd8439a7d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4861/magpie-cli-darwin-amd64"
      sha256 "854ef53ad728c595949358d6acdda7562e2bb60cd38787aadbcdc989936a160c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4861/magpie-cli-linux-arm64"
      sha256 "efa50590842e163c0927dba470bedbccc1e78b927704dbe99c256f73e701a055"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4861/magpie-cli-linux-amd64"
      sha256 "9ffb38b904768ca8e84eb98b294114f3aad967b9c6f0a0fe510b962951d851ef"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
