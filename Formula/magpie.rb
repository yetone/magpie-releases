class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4878/magpie-cli-darwin-arm64"
      sha256 "409687c88dfa39e7b51ced58918f183b7e75ea3cff086a1c46649a5dfe88ebff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4878/magpie-cli-darwin-amd64"
      sha256 "c877538da78c3b685da595fc8cff3dc1e5d5e5d64e2ac8fe5fedf01c5ed422ef"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4878/magpie-cli-linux-arm64"
      sha256 "1933f1750146d154ee5fe76bc4df67bdbef9ecb33791ac8a62a698a274920f5a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4878/magpie-cli-linux-amd64"
      sha256 "2d71d5a1301c5a75f5f01c568a1ea4e5239e16525e26bd0ac7d0137e64d6b728"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
