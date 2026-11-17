class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4355/magpie-cli-darwin-arm64"
      sha256 "a5179e33c02add37ccbfb4bc4d161fe5ad6013a35f87f58a70fab0c80ec33668"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4355/magpie-cli-darwin-amd64"
      sha256 "4654bc10ab3dcad0901d752966e18699b667bd9ec1a4d4fd6a21306cacc30233"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4355/magpie-cli-linux-arm64"
      sha256 "119711a63c239ae1fa3879afaba495138ebda60d311548f82b1c36158cd6c884"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4355/magpie-cli-linux-amd64"
      sha256 "51aa7bcef956e27e265583e3005b89ad68a6a3f375e1d4eddd58942adac7e32b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
