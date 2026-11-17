class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4367/magpie-cli-darwin-arm64"
      sha256 "266249634aad490ec122c43c3650d3ff1f93e763db5ac09469bdfca2f1646150"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4367/magpie-cli-darwin-amd64"
      sha256 "a935d0874a715831cd4bff0deb9e9efecd0c450d1ea589459a23997e84173599"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4367/magpie-cli-linux-arm64"
      sha256 "955859a3268273cf415b85fcf03321ae61ecc10068dfa252b1245d96da3b997e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4367/magpie-cli-linux-amd64"
      sha256 "f843d5349a4e1a1e0d35a39479912c7dbee38b2c03375531c929925dafba07cc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
