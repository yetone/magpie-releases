class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4210/magpie-cli-darwin-arm64"
      sha256 "fbec76ad027c63a147804807994a34f0223da31a7fc210fafefa88d17fb91b76"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4210/magpie-cli-darwin-amd64"
      sha256 "f3292d9497884a7c7aecdc65d464469f1eb73b82007c63f8cda7f4078ad85c26"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4210/magpie-cli-linux-arm64"
      sha256 "ebe79a4382721c97c1eeb3dba0e214cb0ba8cdcfdc78b06da7c829f156956178"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4210/magpie-cli-linux-amd64"
      sha256 "bf34799917631d02d4a3f74651de8c5053f4a344df241cd9f4f7c89e9e270081"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
