class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.136/magpie-cli-darwin-arm64"
      sha256 "664bb8d9a32c2e3f94549983671734684f4d7fbad773bcf4ce7b330b128bcca0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.136/magpie-cli-darwin-amd64"
      sha256 "63aac0a070077a84d4f94aeb923ef77b70e77d87965b9d19d07e8952725754df"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.136/magpie-cli-linux-arm64"
      sha256 "91c4782e6afc9585199de5faedf7f9c1104b0f51783c23df381c77cb5a5f5a92"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.136/magpie-cli-linux-amd64"
      sha256 "fecae9bed6813b8523b866309ee6e645789b970247cd662b7008b7713c222386"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
