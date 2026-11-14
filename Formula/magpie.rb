class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4182/magpie-cli-darwin-arm64"
      sha256 "665f9f5d781a0fb68fc8b4d59aad61f9abf94c081a560781b013cdb76055d2bd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4182/magpie-cli-darwin-amd64"
      sha256 "17728d0dc60440e3cb6eaaac5c123e473b917796a7224a059f550d2ee3a82a7e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4182/magpie-cli-linux-arm64"
      sha256 "bbbe5ca643c6ab48a49d90d30fb60a7c199ea04b5b935c1aa1911fc62fa8022f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4182/magpie-cli-linux-amd64"
      sha256 "4a1dc65150c25b10e0b8b76134a04e260e2e64b47f19443a858e13fde9d6a0d3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
