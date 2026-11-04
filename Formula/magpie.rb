class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2891/magpie-cli-darwin-arm64"
      sha256 "2ebb1a7acb6b83f92bc06af2b6705aff5c61aece2b67b15b1bb9876129ebbf19"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2891/magpie-cli-darwin-amd64"
      sha256 "798b5878829f8ba381835c0e734f267ce49b5a5e48cc97e1296a20b6d5d17c1a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2891/magpie-cli-linux-arm64"
      sha256 "02f1bcdce5b73d7aa7e930fc550e6bd02d90c435d08769851943ef594dcda070"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2891/magpie-cli-linux-amd64"
      sha256 "ffa0785ccc41d093c8fdbc96351372c5f2553dc2cb67e5b0ec2b0fa8e3488c09"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
