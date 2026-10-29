class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2111/magpie-cli-darwin-arm64"
      sha256 "0bfa2e00d12e06d07d27a525d7cdc1cc9182c781254853bb43bbdb95aaa28565"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2111/magpie-cli-darwin-amd64"
      sha256 "40385e6756f9d578d32fae3ccfbf1aa3a6c06003c2037c5a9ac0843f2b705737"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2111/magpie-cli-linux-arm64"
      sha256 "52b40b62e0c8a92f05c88d03f7f8e40864a17dc4db3befaabca02b23bf46b843"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2111/magpie-cli-linux-amd64"
      sha256 "2d2f6d8229a4b61b250f5eff9103aed0763e3608d45e6b8950c875aeecd54d6f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
