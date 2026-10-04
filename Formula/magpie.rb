class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.901/magpie-cli-darwin-arm64"
      sha256 "8bcd3e01f0285de1a9a51a7e5c95adbd14d0b3e65288f0d26da05fb285a18968"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.901/magpie-cli-darwin-amd64"
      sha256 "67333aadd53d0e74ebd205086053c82609cab6ba19fdb6861bf8a51c7db96546"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.901/magpie-cli-linux-arm64"
      sha256 "57cecd66230895f5afb159b21c6c4108c7f20458ed2315238ee5ee09048c81c2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.901/magpie-cli-linux-amd64"
      sha256 "e35d5a5e743e5c00ba34c4a7fc59cfb7e26d6a853d9dc3d4f08ff8495edb2faf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
