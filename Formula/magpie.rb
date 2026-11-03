class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2804/magpie-cli-darwin-arm64"
      sha256 "116d74074b13d6aaaa1d57f1748526f5f6fa9b689847a08a546e4c6eda6da1c5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2804/magpie-cli-darwin-amd64"
      sha256 "af8df6576c6c35dac5fb29ecef3491c0e75864a4c6ba70129a3623cd77c0e7ac"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2804/magpie-cli-linux-arm64"
      sha256 "c7aae55008489dbdc6f8f299c97335c0eb360d599087d297b8059a8daa6a15c0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2804/magpie-cli-linux-amd64"
      sha256 "a1c5f4b2b3c9993975239f6f6bf85b86b57e6e878c5008269523f733be43d7ed"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
