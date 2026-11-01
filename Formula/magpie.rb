class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2627/magpie-cli-darwin-arm64"
      sha256 "cd08c93d8c3dcfad1a4aa915ecbbdd00e88ebd26826e2f0c9ba9f9ed0ac72cd3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2627/magpie-cli-darwin-amd64"
      sha256 "4f967209ba23c8ffabcb808eb6ea36b65cff5626f21ab768f9ad2e1b99b8b0bd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2627/magpie-cli-linux-arm64"
      sha256 "8a61e4af0fb6920696ea0c009eb8381c103310b2f0729bd2f53f58f1f8e4c034"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2627/magpie-cli-linux-amd64"
      sha256 "550dad86a83e6c3c0355dfbc3972106ca4fff672865eedb2af791e4fd24e77e6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
