class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1152/magpie-cli-darwin-arm64"
      sha256 "a566096503a103cebfefa2d1044f40b840cd47961e1d5de99de9bf3cbc2806b0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1152/magpie-cli-darwin-amd64"
      sha256 "3146d4261e421debeb83afef541f06a548302642cd69d3512936849ff49cd3ef"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1152/magpie-cli-linux-arm64"
      sha256 "3d7f2aada907fd35154b076e8b6c2f8dc72e4b46c4a020500595cb87df88db98"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1152/magpie-cli-linux-amd64"
      sha256 "a53eaabb84ec2b8776e6c1e980ec1da8e0c89a82d5353c2d0eb50569a3a2036f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
