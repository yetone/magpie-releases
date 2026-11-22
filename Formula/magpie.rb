class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4670/magpie-cli-darwin-arm64"
      sha256 "8014dccef23cf6038816c668f4eb2a94f805f1e43bd8a39eaf00bf0fafc87e09"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4670/magpie-cli-darwin-amd64"
      sha256 "96e13b597a6125d599e465cda4dcefbccff91917489948e2256e0881429d22f4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4670/magpie-cli-linux-arm64"
      sha256 "0b75be4c386ebd1ef5d17e6de3c6362367ec7053a07df2ea56759e4fe0bc1f4a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4670/magpie-cli-linux-amd64"
      sha256 "32ede2784935d462f56de906bbde7f4b16a03d5b15079e755e3e0f80fced57ef"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
