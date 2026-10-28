class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1957/magpie-cli-darwin-arm64"
      sha256 "11067c0eda86be66a83159adbee38a8308bb3de82bf64332467de1276e2dc986"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1957/magpie-cli-darwin-amd64"
      sha256 "e2b5b2b9b9bc266cc830190740a876dccb5af5b6dfa1750c236d27ad9cc1be1f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1957/magpie-cli-linux-arm64"
      sha256 "2c6d9e465eb5cfca42103afe026ff374ca9773fc3c77202b4bb4cdc4888cc9d3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1957/magpie-cli-linux-amd64"
      sha256 "c04862c522282c478db5cb5bf608e9a0bbf8554ed005cccfe456f74cbe42aff5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
