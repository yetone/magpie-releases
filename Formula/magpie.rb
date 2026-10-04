class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.921/magpie-cli-darwin-arm64"
      sha256 "31eb09a54a3b6dac80e7273a156f4d94a2d8247eb679e8cec57c4d7e6b5ebda3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.921/magpie-cli-darwin-amd64"
      sha256 "087e86c510e759de6d1b376938368824a17866f6fc8d83044088bd84e276f2f5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.921/magpie-cli-linux-arm64"
      sha256 "04562fc0ed1bdafee1f6281145ad1eb13d6e4ef16a1cd39d2fa6d78bb94b0e2b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.921/magpie-cli-linux-amd64"
      sha256 "3b1b01c12c2d8bb7581146a2b5285985599a5070d95842c98152d09f76fd15b0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
