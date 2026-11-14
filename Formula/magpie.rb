class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4141/magpie-cli-darwin-arm64"
      sha256 "9acecfc22ad6b5084a0083106538dd6fc16723b9d8e27ac304559b24ca472e81"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4141/magpie-cli-darwin-amd64"
      sha256 "c386124c85e6afe0fa2aac689dba94cb0d9dce41b21d658f620b3a0c68b4f999"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4141/magpie-cli-linux-arm64"
      sha256 "d4d042c5a7c443206f49f43893b1308e2977892b3262068997407b034e5f791b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4141/magpie-cli-linux-amd64"
      sha256 "5ef647dfbe8e8b07ae38f611c41acbb805d58fec687b8cfa5095361e2f17a968"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
