class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3844/magpie-cli-darwin-arm64"
      sha256 "ab7a4a718c6ae3c7b380915777554a278f08bda0314ab1e00033b36eb9d2ede8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3844/magpie-cli-darwin-amd64"
      sha256 "77b0908a173c6eeb878ad437aa3192f63acee1ba2d78235f0999e42853f96b80"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3844/magpie-cli-linux-arm64"
      sha256 "90ee3feefc641a3b35a71a0d931398ed17ddc0e30605545ac401b177b2348422"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3844/magpie-cli-linux-amd64"
      sha256 "548aaf6215e2d7cb60db4264c97da8f93d90fda3c6363e6712193c2d19ef679a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
