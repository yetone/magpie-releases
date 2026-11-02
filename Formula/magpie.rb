class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2667/magpie-cli-darwin-arm64"
      sha256 "05060a6040ddfd3913893e5a851e218cb51f73602192db73891f5b1a7e355261"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2667/magpie-cli-darwin-amd64"
      sha256 "da246879787fa66a59aa06dc773cd0a17996f7604bccca370d83168fb2c3b866"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2667/magpie-cli-linux-arm64"
      sha256 "e8e2f8d2b1cdf6044d9dcdc234f3a0766ef9379122554651f1503f26595feafb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2667/magpie-cli-linux-amd64"
      sha256 "3724beecd11c9808484810d6a1d6a471613a906e4b1906efadce6381158e6956"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
