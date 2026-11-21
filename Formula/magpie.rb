class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4656/magpie-cli-darwin-arm64"
      sha256 "1465410d19a865890c84a9beac88dfca1f52edb9826bc53a9b9a8403405b7242"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4656/magpie-cli-darwin-amd64"
      sha256 "8011dd5198572db3465a5941d44ee5b7076d5110d5aa93e42702f98d190a6035"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4656/magpie-cli-linux-arm64"
      sha256 "445aaa5b4a625f2ff460a4f7d1f3d0c630994e01752a9bde0e767b39368485df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4656/magpie-cli-linux-amd64"
      sha256 "4e02e35ad18977d31d14b616210b906f6c16a85c3763d3263ba51d1a5dc5b392"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
