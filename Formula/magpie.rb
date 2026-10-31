class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2429/magpie-cli-darwin-arm64"
      sha256 "b0702eab33e5e538a3139347ea6b917482cb51f8f7a7bc65952c80d1be90c172"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2429/magpie-cli-darwin-amd64"
      sha256 "d1335a23e42db21cd5533c50574d8308aaa70eb0f390434d7af8f5d96bbdd2f0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2429/magpie-cli-linux-arm64"
      sha256 "f67fe0878a3f36e403a98c93714c0a526444f835b5539f78913f0eec33ee3ddd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2429/magpie-cli-linux-amd64"
      sha256 "04b18152b199c06a28e04fa47bca4223ea2ff85c99848aba66e8134bd2fe1eec"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
