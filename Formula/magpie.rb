class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1969/magpie-cli-darwin-arm64"
      sha256 "e2dd143ddc429fbcc4e56b201c09dc1e9233942ec60bcb6d63a119cf5e2956e4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1969/magpie-cli-darwin-amd64"
      sha256 "c2e3fbeda531ded61a250eb8088dee4346ea66600414b7502fc23b3ef8ae57b0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1969/magpie-cli-linux-arm64"
      sha256 "ae6f321f23b6a93617e93cf792c49ff1d7d5e98a5260a3e5ae11fbeead2e9fab"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1969/magpie-cli-linux-amd64"
      sha256 "93b191b1a6c565b24fb7b6a855f855b34347fde33d10fe2941bd9bcc796c9f00"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
