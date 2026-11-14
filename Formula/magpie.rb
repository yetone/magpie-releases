class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4203/magpie-cli-darwin-arm64"
      sha256 "81f21cf3e30d996966ac1649ed340882b18e74c01a2317a9c5670b7e4d54b925"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4203/magpie-cli-darwin-amd64"
      sha256 "e9de2c929e27015ad01cd22c035b18cfeab67b285790f2a986bfe6f1dbc173d9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4203/magpie-cli-linux-arm64"
      sha256 "930244d66e1aba0bc530bf6646752e3eeb78ff0916bd0dc219e10d3897db55e8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4203/magpie-cli-linux-amd64"
      sha256 "13ccbda639b3d6c1ac6b898452e946f6ec9746c6385bf02e41a03eaeb676794e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
