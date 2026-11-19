class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4524/magpie-cli-darwin-arm64"
      sha256 "b64f9c6961503150088eb7885f3682260adbeb5aad40de3665245b080415bbd0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4524/magpie-cli-darwin-amd64"
      sha256 "e6b389413c2bc4e76f4e28184226989abad49be030db9fe0c51410dfcb20d73a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4524/magpie-cli-linux-arm64"
      sha256 "0476e7547b8aee0ca295ea99c98c91d7664c2baad48273e12ff30f245d03eaf3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4524/magpie-cli-linux-amd64"
      sha256 "8089085dfb6f5118e86b14ce9cca38980ce53c55594884bdb5b81feb30cf2904"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
