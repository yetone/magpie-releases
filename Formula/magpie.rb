class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4540/magpie-cli-darwin-arm64"
      sha256 "cacf9f0c28acb159f61010986fbc9ae01bacec1e9279cd6561eac349ad033368"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4540/magpie-cli-darwin-amd64"
      sha256 "0d304257fbf0174f1a94c87d04549da431a93c3687bbff6c72b13a55d11fbee4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4540/magpie-cli-linux-arm64"
      sha256 "95993ec8c71152f02fbe6a4cc1395aefe110f11e460c57b7d86d87417684473c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4540/magpie-cli-linux-amd64"
      sha256 "81940d24c88f409be13b94b74754642d93b13b44dd16a93197d69e59e0fec78c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
