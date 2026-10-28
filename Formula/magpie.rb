class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1870/magpie-cli-darwin-arm64"
      sha256 "39f7f410efe27b91eff63dbe9132474b9000c1a08a4470caae632fac8691bbde"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1870/magpie-cli-darwin-amd64"
      sha256 "10360039399d3350cf4f2c9f93628e76d5e8d440f1b5002880b6c46eafcb3c1b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1870/magpie-cli-linux-arm64"
      sha256 "3b70ec1036548bc83dd9bdb0bd6f7ea676578e6ebb0199cdec4fbbbbd81232cf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1870/magpie-cli-linux-amd64"
      sha256 "14fb168ee5762d044d7966ef0e6089ed2f71a6bb3f631665f9bfe2791cdd8d43"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
