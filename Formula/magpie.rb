class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1164/magpie-cli-darwin-arm64"
      sha256 "541b3ecdadca07294a5056a65d852ccfc3d2b45a562cf4c594e0d6384963e345"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1164/magpie-cli-darwin-amd64"
      sha256 "df9a53562c902086442adc7561be1ac9ca71fbff287591e3fb98348a431c725b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1164/magpie-cli-linux-arm64"
      sha256 "8fe93316dbaf3ddbe4a090a928981cd35b15e63bb497a422cb041a0ffdf5297f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1164/magpie-cli-linux-amd64"
      sha256 "6fbc61ec17356180310600c4b74a577b549f84eb249494487781aec295944965"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
