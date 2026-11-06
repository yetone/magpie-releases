class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3117/magpie-cli-darwin-arm64"
      sha256 "90d7a03c9fae8ccc99ae22eff1ff13c151d57640763d9f3f0662396aad630f89"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3117/magpie-cli-darwin-amd64"
      sha256 "9b870fe8e3ba0780e8d616d00972b727e1d0ffefc68845424386ac79d7098793"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3117/magpie-cli-linux-arm64"
      sha256 "1ad2182ce83ce9f0bdbad27648efa6302683d028ce48f8e462b64e1191672293"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3117/magpie-cli-linux-amd64"
      sha256 "5044142f20a28d0bedc2bcecc5e62c3281cecd6d40f493cd6b4919ddab4a4df0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
