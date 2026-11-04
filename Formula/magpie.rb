class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2921/magpie-cli-darwin-arm64"
      sha256 "3c031796951fc77fa26e0ac28af07cef581600ba6e008fabc501c6de55393d1f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2921/magpie-cli-darwin-amd64"
      sha256 "bf8d84aa77e653c94d07f2ba1e52fca32821eda3ca19fa247a06ec13c81690c3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2921/magpie-cli-linux-arm64"
      sha256 "07b6a67e34cb2fa8a67549b162afb63dfe4bf819741ff21e6896c6d04fa11490"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2921/magpie-cli-linux-amd64"
      sha256 "b480c548f88412809f54ca890038ef80818abc1f23d89e6a9f2dc705fa89c26d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
