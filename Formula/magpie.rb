class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.889/magpie-cli-darwin-arm64"
      sha256 "5df4061d8a9bfefabb177ea919f3172ca085aeee274dc8d654de11672c1001e4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.889/magpie-cli-darwin-amd64"
      sha256 "19b7759fc8ce02ddc947f2ce4a17ccabf4bc0c4b90d185ef29e9d3e5772fdac1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.889/magpie-cli-linux-arm64"
      sha256 "c719ce23998b159f47f6d594194dc8bb1c34e4308f75d22ad7c5e4f1957d54a3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.889/magpie-cli-linux-amd64"
      sha256 "c0caf3c075f893fcb41f1a444d1bc208be1732ba6fc0c0128d791d1eafa00038"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
