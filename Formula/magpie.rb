class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1878/magpie-cli-darwin-arm64"
      sha256 "c9733cfc4c177e905861244f30a8fb35bc466aa8167a7c21083f2d1c5251f8f5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1878/magpie-cli-darwin-amd64"
      sha256 "f7d4e4cc19514fe85d3e7fe5d3a478175e60cca8dbc42c60cb46772157deee50"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1878/magpie-cli-linux-arm64"
      sha256 "a2b27cab17ef7f1aef82090440016a625b2ec5a28eebd01094243a3a29834cd1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1878/magpie-cli-linux-amd64"
      sha256 "de0ba5a900f383de8614c232346a6947e92cb45426c78519f1f6f595784d46a7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
