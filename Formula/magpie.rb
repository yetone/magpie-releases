class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3167/magpie-cli-darwin-arm64"
      sha256 "9732d0adabd2ac0e2b23ae631e521d763ec03de13edf3977fd9396823ab8ee1c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3167/magpie-cli-darwin-amd64"
      sha256 "463494ee96a1af5ba73ed83dedfb3b5f7393078fa6af9bd7fa60a71c4ea5d7d6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3167/magpie-cli-linux-arm64"
      sha256 "1bdd5529a9210761a4313fcd44a9510b4097288b8c0f8ad72ceeea68b81e5873"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3167/magpie-cli-linux-amd64"
      sha256 "c94b4eec30f2d9308a0123b48461aab403ecd210add1a40e72abf403ce14be87"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
