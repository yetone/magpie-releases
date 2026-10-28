class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1909/magpie-cli-darwin-arm64"
      sha256 "d418e982142ed6d6fb6f45bc31e5ba5c80f0367bb702f0bc545eade33cf50a6c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1909/magpie-cli-darwin-amd64"
      sha256 "ece3aaf2f41da59a4205d55a57c3e45551fa7461c700575753699d2b349ce774"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1909/magpie-cli-linux-arm64"
      sha256 "d4e9da8786525b27143088123ece243c031be276f3fd1ec486c585d810cbf1c7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1909/magpie-cli-linux-amd64"
      sha256 "20de997907f4b1c46c2a63ad8da6f636b994fdb8ed01742764362230c918b829"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
