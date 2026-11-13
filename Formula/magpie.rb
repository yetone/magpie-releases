class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3968/magpie-cli-darwin-arm64"
      sha256 "b7d4bf17f27405306c87e5ad83186ce6f95fbfa2562b691b8e99186daf2baaef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3968/magpie-cli-darwin-amd64"
      sha256 "9aec9d60b9bd59e4071320cf029d11dfa726900bd0ba3dc08cb4809a3b9e661f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3968/magpie-cli-linux-arm64"
      sha256 "22459b9e5b7b135931331d326615c95b32fe6ae070bef4675c629e43197c307b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3968/magpie-cli-linux-amd64"
      sha256 "ebb8b836796c3889f7a63c0b3c7e081eac27272dca43074c5d44490af1f4091a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
