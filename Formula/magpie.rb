class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5043/magpie-cli-darwin-arm64"
      sha256 "217ef806293d0826404bc550b63389ada2f9b948642a8aff5dfc580790bfd413"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5043/magpie-cli-darwin-amd64"
      sha256 "e2ca8e453a8019c13eb7095adf2d3b2495d6afe2560d0529ed3f09556d7da4e8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5043/magpie-cli-linux-arm64"
      sha256 "3e8da569dfceff72919fe353ab3a383804ebae3c67ca72b3c78c7debbac274cd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5043/magpie-cli-linux-amd64"
      sha256 "d5d0fa8e1a2ff5636d763d687eb911067213d385a4c0be08071bac7b8d212917"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
