class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2051/magpie-cli-darwin-arm64"
      sha256 "f5ffbf07ec1ca249da482225aae6289ef8d19229a8aff1dd65aa5bd29ee64889"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2051/magpie-cli-darwin-amd64"
      sha256 "92c74be8d34e2e2a9e5f2dd6a92b519969fcc1c7882756ccff6d12b9b09725ed"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2051/magpie-cli-linux-arm64"
      sha256 "2c5b6e966d2d190a34b83785cce4a7579560018476ca5c15e74a79d1e957ad8f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2051/magpie-cli-linux-amd64"
      sha256 "c3a694f3f5dd76dbff8cb505b21ac7cfd9c72d529e7a7bfa3d0e73444058f4d2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
