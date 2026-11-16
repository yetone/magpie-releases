class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4291/magpie-cli-darwin-arm64"
      sha256 "dfcea1a30895939d58bcc3c9782ffc2b614fa27a065487adcb4fc860d388d877"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4291/magpie-cli-darwin-amd64"
      sha256 "8a780878c98a8a35f3d30b09a19235f0a1a7f5044065ce377c845c9fc4718192"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4291/magpie-cli-linux-arm64"
      sha256 "0c5a1731d907b2ba27fcf880a53dc105c466f66008c6f1a289dbe58f0c6edef6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4291/magpie-cli-linux-amd64"
      sha256 "793627af1fed1626dfdd223214c61e34bfd35538e8b72396f42604c578db1a21"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
