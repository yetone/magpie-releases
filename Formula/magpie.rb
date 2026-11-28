class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5005/magpie-cli-darwin-arm64"
      sha256 "ead96dba9271d6c388ccdc307aeee1c37e73c8be591ebf132062f92884e44412"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5005/magpie-cli-darwin-amd64"
      sha256 "18be4fa2b00b42bced48a148ff91015b80370adbe85b896bb527874ec7d73189"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5005/magpie-cli-linux-arm64"
      sha256 "38e32a49bd991a72eef244d09840e77dfa8ecb02636c8d0cb450ef42ca9778b4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5005/magpie-cli-linux-amd64"
      sha256 "56fffd2b77d55abb705daee7fbae1c95e58bf54ffd29aac48e4d7a69c87ad747"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
