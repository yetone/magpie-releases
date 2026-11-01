class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2574/magpie-cli-darwin-arm64"
      sha256 "1a9138356e9bac3c6c094eca7ed1970f89f40bb3f8b964e6a04fc819e261fa1f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2574/magpie-cli-darwin-amd64"
      sha256 "676bed0946ca111859776f2ffc5674d4e29bf6eb699c4bf78e8da9cdfeb1f9f1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2574/magpie-cli-linux-arm64"
      sha256 "9ef6616184adb49a9e6a5270021721d156b313d430020cb01ed37656a66b0fbe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2574/magpie-cli-linux-amd64"
      sha256 "75629e66c01cff19413cfa810e63e037722e7d162685b981131ad45eb7a6f38d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
