class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.153/magpie-cli-darwin-arm64"
      sha256 "9f7db7bac1d0bbd3945685f56a6411f53bff2d62dcb2f82164cd86d31d987f9b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.153/magpie-cli-darwin-amd64"
      sha256 "67443d23d47a3961ea5453b5f3d061111e97436ab31fc2f1e6baa089f8e09fe3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.153/magpie-cli-linux-arm64"
      sha256 "41cec20c3857c3b87777b6a387a91f3865f8b56e7facbec650e484b3066e5883"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.153/magpie-cli-linux-amd64"
      sha256 "e408c74b6dd3d730dd9fa92d4f22120b0b96cde9aaeb24eb20d7bb9246e251df"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
