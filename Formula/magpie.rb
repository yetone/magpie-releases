class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2695/magpie-cli-darwin-arm64"
      sha256 "aca5c591cba4dcee2e7069bc725d3cd6cd1758fb9c394e0eb4c0c9316a0adb44"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2695/magpie-cli-darwin-amd64"
      sha256 "ce4339bc5df1ef7d3b96cbf65745a0106113a561631573d2a6d5f414321f45a4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2695/magpie-cli-linux-arm64"
      sha256 "b239118526acc05f031952ff478c649c17ac29a0a882f6064c926155858dc055"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2695/magpie-cli-linux-amd64"
      sha256 "f3f2352aa798b70f813f207bd26ed58c897033f9a2af339d79a85daff3688163"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
