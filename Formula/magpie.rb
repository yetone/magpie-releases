class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4481/magpie-cli-darwin-arm64"
      sha256 "22888b7d5c520b76ff525f2d13c11ed1c2a2321902f4a3e264f0fcf0a9f65d10"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4481/magpie-cli-darwin-amd64"
      sha256 "8dab3e29ecf1f050cc15061c7842fc7eb086d76b20e597c57343a566dd26f0e2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4481/magpie-cli-linux-arm64"
      sha256 "9bb1580d1b949787f96ff33145d6a123b61883430932c397afbadf583ece45eb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4481/magpie-cli-linux-amd64"
      sha256 "aa6c8dc7b9eb5314a953c235aeeda7ff67f461ff6a9a6852c3cd8198b11fed27"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
