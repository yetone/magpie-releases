class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3000/magpie-cli-darwin-arm64"
      sha256 "03c5d0867da4d07c0cc56f35fcbf66f64b9cc44e82f39541840c56a0cb3b9da6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3000/magpie-cli-darwin-amd64"
      sha256 "53cfd9db63090f571ea9c1060472b5b3fc289b31b705058b5163c41d93b125bb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3000/magpie-cli-linux-arm64"
      sha256 "aafcb2c4ab46b0fe81d6866862ce8e6ce941289dbe3b0bb48df0c89fa19c26d3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3000/magpie-cli-linux-amd64"
      sha256 "0e0fb59ebf6c3f00d42bf80d1a843c174c0f7c43e3624bc4096bb1987f451a18"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
