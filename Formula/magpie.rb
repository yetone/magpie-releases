class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2566/magpie-cli-darwin-arm64"
      sha256 "0dfd30ed91a48abf2ccd63ed01f2225e2a96408531c2f0448498e859aa8e19d9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2566/magpie-cli-darwin-amd64"
      sha256 "af0fce18b25f65c31d791c44093960a9dcba1e94295a49e07b36f55cd3c8075b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2566/magpie-cli-linux-arm64"
      sha256 "6e8f4ac4d6638aa701661085b06574d974ab434c6b7f85d510410469519356fc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2566/magpie-cli-linux-amd64"
      sha256 "39c50e053f8749602147bc78e5806f23df5aba5a7c0424be724d0f3d3873d4e1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
