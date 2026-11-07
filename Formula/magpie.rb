class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3261/magpie-cli-darwin-arm64"
      sha256 "8285d12a10905990cb2e1d4ea13d8b9573aa8071e778fcf66913bafa4800a1c8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3261/magpie-cli-darwin-amd64"
      sha256 "42f101871a703eee33daa54d51854b1e2df7b580b54a8e8fad3bc49119a3845b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3261/magpie-cli-linux-arm64"
      sha256 "d4eed1cb592dc2dce39da4eb4ac00f956959dcb954c4a1688b907baccaf66b2d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3261/magpie-cli-linux-amd64"
      sha256 "9dd56fe224266cfcaa66f363a8dae5cc5090f23781ca194f9cfa50cb07c47469"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
