class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4949/magpie-cli-darwin-arm64"
      sha256 "b9c90ffe8556d1694bc94500d0e762293f6e038ebc9b13c7d9fb43ab10e487aa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4949/magpie-cli-darwin-amd64"
      sha256 "3870c6011f8d23191a991d43eafd1c880ebbe0f2e074887bce000b0c8cfd65f3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4949/magpie-cli-linux-arm64"
      sha256 "ec7ca81d778aae7637eb83488992691bd85720cfb200bb52e96f45935628ab1e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4949/magpie-cli-linux-amd64"
      sha256 "1f5b58ee666b22905fd0fb568da8d76377f28809941a3cc5d9604126186a814e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
