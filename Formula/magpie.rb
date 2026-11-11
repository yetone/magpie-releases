class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3686/magpie-cli-darwin-arm64"
      sha256 "dd20f0596432625f6db566dd123fbca66e8df63fa763430bf3be0ded7d8e0534"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3686/magpie-cli-darwin-amd64"
      sha256 "fd14b14d3e0e23514295ad9ace444fd7f956bdc92e35576dfe2aa25250cd3e97"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3686/magpie-cli-linux-arm64"
      sha256 "82acfe570c03777a2024a99bc31b2176777f48b2f114a1af024b60fcdae0f792"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3686/magpie-cli-linux-amd64"
      sha256 "cd78f0d5a20787dabf771dd783fb3f49f53ebcc80471a62718da2b4b4e24a9e1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
