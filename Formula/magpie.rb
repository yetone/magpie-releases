class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4550/magpie-cli-darwin-arm64"
      sha256 "f06e6a804ac63721b7a8eea6ef63edcc2eb9ad649a778791cfd96a8d2eb3f2b3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4550/magpie-cli-darwin-amd64"
      sha256 "6b4685da7a7075f766e68321c81a8803a1530141da332fb534b4eaeb0f8b8199"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4550/magpie-cli-linux-arm64"
      sha256 "f12bb6187477b6c2cf430ea468195930ddf32582cbbe9c19264b93a284a6fc7d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4550/magpie-cli-linux-amd64"
      sha256 "24746f6ede8554643db52a29f1b86864328639346fe8be9994ff6ec8975126a4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
