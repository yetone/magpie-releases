class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2573/magpie-cli-darwin-arm64"
      sha256 "2c4682cb42f4533d66ced723f3eac9b16c24fa6645ef9dfb9ae793429406a146"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2573/magpie-cli-darwin-amd64"
      sha256 "dcafde2236681ee197578e1fea17c27a1e2fee7c9d866a2469394e3154c2eeaf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2573/magpie-cli-linux-arm64"
      sha256 "50a87534cc1d57fd6af3a837619a11b0e7c786ff7f093d3d2752e07c8241965c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2573/magpie-cli-linux-amd64"
      sha256 "e128bce0f26ce2b93f93a6f6905b8b4da6c4308419d2602ff2ca6f1e0f828130"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
