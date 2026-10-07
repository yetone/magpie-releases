class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1102/magpie-cli-darwin-arm64"
      sha256 "5af1e6aec22818590ba32b2212736fdb55068b66c17e9665bb11a41a5cb2f14d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1102/magpie-cli-darwin-amd64"
      sha256 "ed074fbdf447b6cf8a990bb3e4e99405d9b2db48391425d9ada7d6d858df8f1a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1102/magpie-cli-linux-arm64"
      sha256 "3b1f6f1124a56a5461ed078d0ed564e4aee960b4598d00d31545970168ad5123"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1102/magpie-cli-linux-amd64"
      sha256 "5c56dd07820df362d30f31c81bf7651993a04bd89b79188226aa42cd7ad2b308"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
