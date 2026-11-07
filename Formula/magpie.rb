class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3213/magpie-cli-darwin-arm64"
      sha256 "0373f2c16617e63d10207452c29075dbb346250204d0a488d6756a550540bd23"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3213/magpie-cli-darwin-amd64"
      sha256 "e22e2ce0663df6663e7c72619106995db78008fb3b526ed1994dfeb4ebea3bfa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3213/magpie-cli-linux-arm64"
      sha256 "e9f9813c40a88b57ab67a5b62538465af31646a30ce6710c51e7bac6d58cb450"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3213/magpie-cli-linux-amd64"
      sha256 "37aee6d283718ada3d2d050c9c083fa9ab124b92c855de4f5e847f6f0fd1e919"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
