class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2699/magpie-cli-darwin-arm64"
      sha256 "8b16f27a271b157337e54fd21250fdf13611d26e87601848ae120e48c121fb01"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2699/magpie-cli-darwin-amd64"
      sha256 "a00fccfda4f7079c898a2632976ba4e6bf650079c0f868e0953ac10dd318f174"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2699/magpie-cli-linux-arm64"
      sha256 "728686573b85cc5b6c7e67f94a127390d53e4ef7a63af6746d6f705bdff8be66"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2699/magpie-cli-linux-amd64"
      sha256 "a22896e3ec71c182f94264b34d819a6131626017c70875c80b5db6d70aaf0147"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
