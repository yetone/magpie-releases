class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.946/magpie-cli-darwin-arm64"
      sha256 "5b6b5c301e33b81fa2b2b08ce91721f050fd25dc44680fb8dfe805fe4e5c1f60"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.946/magpie-cli-darwin-amd64"
      sha256 "449921718ffe425437ab5270d30c46f491efd5182be98d90a6120f7a8e76108d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.946/magpie-cli-linux-arm64"
      sha256 "a2423a9ede121aebe82b0b6b122005ccf9bd68c4d09802cbf32f5a0b7a057b90"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.946/magpie-cli-linux-amd64"
      sha256 "520450bfd2c22a43d6c47aebc1e766baca08bf4a9905c2651cdec839e2cef284"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
