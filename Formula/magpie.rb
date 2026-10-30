class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2131/magpie-cli-darwin-arm64"
      sha256 "13a825f322807c9261209db98d9b6b434e9a6ea12f2c2d7e052ccee6a10f8e95"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2131/magpie-cli-darwin-amd64"
      sha256 "5389d6188963f40942116f9e191c4e9a7123a59e15e54a18c505d07ad2d4e03f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2131/magpie-cli-linux-arm64"
      sha256 "0c6f165189819d02e9bcb0000781daa5fbd32f5a7494740191d0b768790df51a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2131/magpie-cli-linux-amd64"
      sha256 "00d857a24e751bafae78e40159f78898564e668a3bc553f8d659af3b731c413f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
