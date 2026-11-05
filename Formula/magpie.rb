class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3011/magpie-cli-darwin-arm64"
      sha256 "becb1a5d312f00eaba55aabb8391fd043f82b5b1278ef8f35ff5606fdea90687"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3011/magpie-cli-darwin-amd64"
      sha256 "56d9ff7e267d58947ac3fcd8ce0bb5435bd698072a93e105d72e98ba58831240"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3011/magpie-cli-linux-arm64"
      sha256 "ff80e328d0befb1c784285e13cdce813baa95ad2b2eb180e1034c76e753b498e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3011/magpie-cli-linux-amd64"
      sha256 "450dfb42ff87ab39ce5affead90f9deede07e5e16789d937b2cc90abff3b9270"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
