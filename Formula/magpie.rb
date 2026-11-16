class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4316/magpie-cli-darwin-arm64"
      sha256 "33214bab2c84402975a418efad4c7292900ea8c71c29f1d6452730b6c2029b06"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4316/magpie-cli-darwin-amd64"
      sha256 "523f1d8b282c292c069ab880dd515fab6cc7790f369e8afc432d28d92194de2c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4316/magpie-cli-linux-arm64"
      sha256 "09049040973bd5c231d9f3c4e104e7e84589b0e555a77f23905fe405ddc88a76"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4316/magpie-cli-linux-amd64"
      sha256 "29535c7bc976808daa72aac229235c61d4e4bd1caac7926ce039fcd781b79f79"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
