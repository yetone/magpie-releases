class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3254/magpie-cli-darwin-arm64"
      sha256 "c7497dc55f28d4ab93e3c235d5679d7e61fda0ebfd25cb5815b43622526288bd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3254/magpie-cli-darwin-amd64"
      sha256 "ef8f232eab7d9f5f20c8e56f5a4d04ed91986960014b5bbf6642ec98050e8494"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3254/magpie-cli-linux-arm64"
      sha256 "a9dbeb3b16db99540b2b25e71b8cd673755bc122c114d594fd80d401f5e62076"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3254/magpie-cli-linux-amd64"
      sha256 "ec5d65cb1a7b6ba1027f2d690267efec24bc7fc2f7c78a26380a8d20845c673f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
