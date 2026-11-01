class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2589/magpie-cli-darwin-arm64"
      sha256 "89a69a084fcfb72ac47ad8d1ea66843f2b99889c78a86de6615811d9fc338633"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2589/magpie-cli-darwin-amd64"
      sha256 "576cebadc7610dd50eb7154677ec8978183ac62b89d0fb9d06b72144d2e8c1cb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2589/magpie-cli-linux-arm64"
      sha256 "c2c48ddad1206e880bf86465045d09d37ff8df7fbbe96ba4aef4b9cdf41a9b8c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2589/magpie-cli-linux-amd64"
      sha256 "34485c38f76775599a878bf33513b937160d292b0acb418f9f7e97f56c01da8b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
