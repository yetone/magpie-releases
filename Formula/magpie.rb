class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2513/magpie-cli-darwin-arm64"
      sha256 "d71de0b6cf2bdc7341e80fb55fd671fcfb19b2dc733a0c736876e5f492541c7e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2513/magpie-cli-darwin-amd64"
      sha256 "a2f97352073b227bea3ebd4811a3daa269c9d9034b8b332d34874defaf69eaf7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2513/magpie-cli-linux-arm64"
      sha256 "f9bc91b36c370cdeb49bb1db4ad6c83e9883e608ff89768d86997646250c6a83"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2513/magpie-cli-linux-amd64"
      sha256 "e4f7c150ca7114978a4c7df921a5b3680324efca19ef7f6e388ced6bc663234f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
