class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2256/magpie-cli-darwin-arm64"
      sha256 "dc70c337002a7b400001ebe34411d3aaf44d6525c0f6fae6edbe54c4b0722db0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2256/magpie-cli-darwin-amd64"
      sha256 "628776a4062cb97439af6bf628a68db1861341c6579561ff7cd20fd13fd43268"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2256/magpie-cli-linux-arm64"
      sha256 "00899e42712601b207c673d99544ba2234fcfb632800b87c87f1d051677193d9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2256/magpie-cli-linux-amd64"
      sha256 "7771000d007c4616c1cc5731cc4174960daaaa8bab2aa78f4615aa33de573fa5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
