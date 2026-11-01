class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2512/magpie-cli-darwin-arm64"
      sha256 "39bbcf804db662d21404b1df01fa78f4faaf761156b3298bc65cac9e6b227b8d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2512/magpie-cli-darwin-amd64"
      sha256 "987db90bd4bda64bc034a20c4c2a251d1222a57c504206bb0f849da472141879"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2512/magpie-cli-linux-arm64"
      sha256 "d1f74173a5091dc6f7141b3e0714030c8b1dbd73d8b3084c799a8a36ed887dec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2512/magpie-cli-linux-amd64"
      sha256 "c1d3334f2c4b358e0784d51905cca7fa59a83619ae65b0830e5d5ee0f3162b92"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
