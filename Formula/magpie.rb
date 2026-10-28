class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1954/magpie-cli-darwin-arm64"
      sha256 "901ff891db0dcccb6a2990ca78946a0e581e78848cfcfbcc8094785144faa12f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1954/magpie-cli-darwin-amd64"
      sha256 "2578d3263a144a0e7a58603f131379161baebfa161c0123290baa081052e7080"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1954/magpie-cli-linux-arm64"
      sha256 "bf7ccd9b412e3dca24cc507d634ab475cdeffbaae4efeb8955d0f8fc9828f2db"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1954/magpie-cli-linux-amd64"
      sha256 "235934a0fdc375ff27d509f41f9df5569e2625829527c05d28e05a91d0cd5a9c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
