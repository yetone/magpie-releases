class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.951/magpie-cli-darwin-arm64"
      sha256 "5eca621d9d4367cf65ceca3b085b1b3e0fc82c73c05699d76b6414976f3da26f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.951/magpie-cli-darwin-amd64"
      sha256 "d9623c817ee569de45ffc2e8c14553b518a72c1bcc5ef01420c217822dc45337"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.951/magpie-cli-linux-arm64"
      sha256 "e98ef3475c67aa0f2ff3c545abab49c8ed699ee2992828f8e122fa1311e053ec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.951/magpie-cli-linux-amd64"
      sha256 "6e1878b624176ce4c84cbaf6f8526426ac6b439e50159786403689dcb4fbf4ef"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
