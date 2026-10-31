class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2298/magpie-cli-darwin-arm64"
      sha256 "aefa8b6c9393d2259f8dfefffe55226d96644b7bcd1b76d0917e75e41b1099f2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2298/magpie-cli-darwin-amd64"
      sha256 "5bbe1c43e50c96217312d3d99623933b4678f82b7dbb0aeb2c1c933d03a5ceb0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2298/magpie-cli-linux-arm64"
      sha256 "846cb54e3f9f34c8802a7fd1551985088d900e905291ff3e5a99c160c3025133"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2298/magpie-cli-linux-amd64"
      sha256 "047483229c47acf37badaad6c62c797255bbcd654be6a81de5041580fb3e3ced"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
