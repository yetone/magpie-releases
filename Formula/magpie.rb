class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4344/magpie-cli-darwin-arm64"
      sha256 "50a2336718d2b109d9eb06efe3bb85ed1b13896140d339cdbc65234a83c73aea"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4344/magpie-cli-darwin-amd64"
      sha256 "4ca3af7b69a4b18574d76af577b9ba21e6808ec3ae670e13523bf19210d18fef"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4344/magpie-cli-linux-arm64"
      sha256 "27ac8ec52581e90c553eb3dbd811799f30a7e85a7cf155becca6fa6422142dbb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4344/magpie-cli-linux-amd64"
      sha256 "7b7724ac229a8617f306e5b7dc64066f060f2afdc7c4321192e48eba7f0336a0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
