class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2118/magpie-cli-darwin-arm64"
      sha256 "bad3c93d5f7c66e83c71a8b7f92135ba99a439a2d09b356a37d85f792bffe888"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2118/magpie-cli-darwin-amd64"
      sha256 "771e502948c6cc17e5a47cedd1d8baeb8ffdb75d95a58a73b4a321c639c21567"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2118/magpie-cli-linux-arm64"
      sha256 "cc8d2088716b3594272bb4f25f4c397008c6ff8cb495b93ad1771a30b1648dbe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2118/magpie-cli-linux-amd64"
      sha256 "9124727588c868b9091dce16d9e744d3d8423a4bacc94bd014dbb5b789df0e75"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
