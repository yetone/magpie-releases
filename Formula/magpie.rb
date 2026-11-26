class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4833/magpie-cli-darwin-arm64"
      sha256 "43fb5c442528cf6c0024d8925b70ebaca9f14570002984aa4b3f2f96bf532d3a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4833/magpie-cli-darwin-amd64"
      sha256 "06a7afadf95839a086712d9588ed8df34ea78a459adca8d4adf13f00be7b485c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4833/magpie-cli-linux-arm64"
      sha256 "a448efbe2043fc5b34d73a3e6e3496710202e82ccef3e0c26f44ba45aadb3a52"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4833/magpie-cli-linux-amd64"
      sha256 "5749809b7f8e651146d73f9b5ac44f3d62c4caf4eb917596d5b80cdbe6ff994e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
