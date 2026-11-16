class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4331/magpie-cli-darwin-arm64"
      sha256 "09ba14b7b762d9502eb6c93d51f1b24c9abbb15c5ce95e3b2cbf3252264eeb2c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4331/magpie-cli-darwin-amd64"
      sha256 "6b8b6af229537245e1dcfe8fee249635da684aec5b6afb2d763f9ca63b7b439f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4331/magpie-cli-linux-arm64"
      sha256 "42eb3505364b22e772f1a952f8f85ded5fad874f1ef1aa4b6b6f346824e22ef0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4331/magpie-cli-linux-amd64"
      sha256 "1a14d95d28ea43c26bcd78864e87114331b930b8b57d9a198de30933c997feef"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
