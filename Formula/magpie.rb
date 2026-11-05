class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3078/magpie-cli-darwin-arm64"
      sha256 "c2d04f3c8737a7a973fe76bf029d00ca0c7a44681468cb1c5187c3decca91e1e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3078/magpie-cli-darwin-amd64"
      sha256 "54e19acdc5236aa39ba70ac72a0d9903516fb5f48c170a9727b5b11c9ffcb6f7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3078/magpie-cli-linux-arm64"
      sha256 "9448e00fbade3c6d8e9bd69362e7ad5a5f0d89aa68524fc6980b88d540c0e30e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3078/magpie-cli-linux-amd64"
      sha256 "4d2d814d46389565c7a34638366a083128245cf6b51a940bfedc2fd3233c950a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
