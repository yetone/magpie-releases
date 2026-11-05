class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3057/magpie-cli-darwin-arm64"
      sha256 "5a697ca052013841e4d42f182fa775833c26e094ccd67b82b9aa0cb801f20126"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3057/magpie-cli-darwin-amd64"
      sha256 "57997946bcc546d10d2523d724717a86db9ea13ef16f1b82b3184741cd81f6df"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3057/magpie-cli-linux-arm64"
      sha256 "773255af510f411a1131626a5e9048c6f12120939ba0023526883cbd61fb150a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3057/magpie-cli-linux-amd64"
      sha256 "63c8fcab1f95393c32183a02d5e19fb248f7657d8f48e32ed2bef75f16876429"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
