class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3165/magpie-cli-darwin-arm64"
      sha256 "87f9a01d57afdfaab89f4586308bc8b195d371464957680472b8aa97b196fd79"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3165/magpie-cli-darwin-amd64"
      sha256 "edcb2f93739a0d12b75bbda7ecfbca7a206e6f12f13fc3379507622281c2ded7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3165/magpie-cli-linux-arm64"
      sha256 "62cd2ca838453458665070489f976d4bdf403c43e2a08bb4df456ac5ae21dd69"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3165/magpie-cli-linux-amd64"
      sha256 "66fbe3d32d7b06fe6112222e899ac7e9eb3a934fe1db4392c9aba38125d1d94e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
