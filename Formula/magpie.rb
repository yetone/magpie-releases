class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2605/magpie-cli-darwin-arm64"
      sha256 "bc7daa2151f85c2f75a024396b78feeb7016de40c2807fbbeedd9731f3fced09"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2605/magpie-cli-darwin-amd64"
      sha256 "cebab07e21ffc56a7c49f8d73ccb5ca8a949201ccec71a4f89ac80e1beee416b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2605/magpie-cli-linux-arm64"
      sha256 "b23798fd9077392be9e1268a88be77290ec381ac0d7d90f9fc22be7102406bbb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2605/magpie-cli-linux-amd64"
      sha256 "5ebecf7381618f30cbc379bcc43bc6f5ce67eec4a0d5fe287ad74f96e9b38f3a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
