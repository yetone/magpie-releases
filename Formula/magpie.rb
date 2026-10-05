class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1051/magpie-cli-darwin-arm64"
      sha256 "de0c0c80ef19482ad264541dd6b2cf2fe861d0df46e195ec39a94da55ae9ccb6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1051/magpie-cli-darwin-amd64"
      sha256 "ae6d18a68513d6f17d22f1d8f8a57c73ea2c2e525e8ad54560545fe4710dbcc2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1051/magpie-cli-linux-arm64"
      sha256 "66deffaa1186fb1cdd09e1ddeb6dbc42601a4590c3c1e2928edd33589c8f455b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1051/magpie-cli-linux-amd64"
      sha256 "d2475d5480b675e2e05e0081c7dabafc2895edb6b0fd4ce487d2316bfc2df279"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
