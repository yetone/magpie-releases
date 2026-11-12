class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3831/magpie-cli-darwin-arm64"
      sha256 "36ddb6d41b1278d44add7ecd22231400565d195b52da8ab2b81d306fa36ee553"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3831/magpie-cli-darwin-amd64"
      sha256 "983678e404450e89653bf1e19aab7652c49bfee445c662276136a3ab380b3d9d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3831/magpie-cli-linux-arm64"
      sha256 "ff3f3e1a29acb7fc88663491c6b5362873d4a3d67e875fcb15f51f65e774d34d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3831/magpie-cli-linux-amd64"
      sha256 "16d14eb59ac6dd7f8f1a6265fd261c27784fc8768e3ff8f48cf3411112de24fe"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
