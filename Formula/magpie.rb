class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1996/magpie-cli-darwin-arm64"
      sha256 "d09755a0f2ed5462f6ac8b8fee55d6cbc107edadd9ad8d46e91c6020bfe70821"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1996/magpie-cli-darwin-amd64"
      sha256 "5f486c562bbff7060f05244a91c6100086a678dfb3706d8530d3d1c4ee7824a0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1996/magpie-cli-linux-arm64"
      sha256 "3e6dfd97ed8327db2547ba686a6b0a2b5db52bb7bd9719e48a8c5378deffa073"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1996/magpie-cli-linux-amd64"
      sha256 "16ca084896bad69fd7b66673f37bcf8f410f97e3a88eaa1215327eb15736a759"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
