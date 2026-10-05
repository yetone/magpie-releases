class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.967/magpie-cli-darwin-arm64"
      sha256 "5478d3682f7e22be7dfa4a3bca7122ddbcaa71bb4ae8f5011a7d2cf4ec3b3398"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.967/magpie-cli-darwin-amd64"
      sha256 "b3ebed840ca08598a977965dd48d56d9ab5f034328c45784fb8cb8f5b3fd16c6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.967/magpie-cli-linux-arm64"
      sha256 "52dda184c071fb0075758f5e592a83b7297f9829f905d8bd02c1d8d56e2b5c16"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.967/magpie-cli-linux-amd64"
      sha256 "445a803751800ad0f46c5126cf26f15a3d5c2fc3f8fddefe7c8d946567e4fcd3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
