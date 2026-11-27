class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4982/magpie-cli-darwin-arm64"
      sha256 "0c6cdb1da44f50c3f688104aa2741dae23778f3f96846a0d80739b872d2678b2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4982/magpie-cli-darwin-amd64"
      sha256 "805cf31dd73633b55397708700266a7e71811aeff0bbfce53d0107a5772d939a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4982/magpie-cli-linux-arm64"
      sha256 "fc8c3a3e08433f64ba18467850eee035b4c3d852d874c24a1d5638ba04f3570b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4982/magpie-cli-linux-amd64"
      sha256 "91b73b699ce4b89771939b6d17fb132b3c8377aa2a6d71f5ff2fc9d39c1d1994"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
