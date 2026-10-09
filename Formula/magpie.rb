class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1148/magpie-cli-darwin-arm64"
      sha256 "21aedd3335399365ec97611bba71a09d8171372824ebd4ea531637b0ecce097f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1148/magpie-cli-darwin-amd64"
      sha256 "46495a641af4240f6bdc04f140af2158f48a3a2e2d617189c701d17610b0a638"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1148/magpie-cli-linux-arm64"
      sha256 "5a5c6024a063f18b5991dc1f3aa6ae137b3d9088c7b8595e197594f14b4c22d0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1148/magpie-cli-linux-amd64"
      sha256 "98e2bcd9fc20100454cd97245635ed033830b25080a53c367c842ad6864d3ef1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
