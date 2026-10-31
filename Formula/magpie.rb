class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2309/magpie-cli-darwin-arm64"
      sha256 "8cf033f687d01adf691375f41b5a38a97da5ac49e31ca33ef640d6850ef6230b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2309/magpie-cli-darwin-amd64"
      sha256 "a3737872bb9ac331d0d953e6955eaf7534db8f31b46e98f3f88d24b71d7d5d96"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2309/magpie-cli-linux-arm64"
      sha256 "d902538c492abd363addbad72393269cc9537e638532d68c7f3a3ec7496100e0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2309/magpie-cli-linux-amd64"
      sha256 "d360e953b8eb33333544dd3a112b63b4ddd40f14267df2a34332083abf9dc43a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
