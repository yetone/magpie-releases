class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4071/magpie-cli-darwin-arm64"
      sha256 "d8664bf4e3719e6347df490ca133b99bcaea7b38ca9939fbbf6ea32142eab5fd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4071/magpie-cli-darwin-amd64"
      sha256 "640a6b888ca1e00ea845ee6ee3d4df44d5f39ed415fa12366ef3487e7e5a517c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4071/magpie-cli-linux-arm64"
      sha256 "c1b08ad8cd7cf75db2d3361bb4872474e6339812f015347b4ee5a7865fa05b1b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4071/magpie-cli-linux-amd64"
      sha256 "dcf3dae904c48eac984260f4b48b69de7afb8437c1a6f66aeaef65112be8971c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
