class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2439/magpie-cli-darwin-arm64"
      sha256 "2b8bd5f47afcb16d29f820cc7d6813d1cdfaba8e445f14b4232c8af7f95ff6a7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2439/magpie-cli-darwin-amd64"
      sha256 "a05e35bd3c51569c052ad7804bfbd3f2661060afd1864f4c671f9bedb5dd71ae"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2439/magpie-cli-linux-arm64"
      sha256 "6bab804a68c0bf494f114f8efef80a841f18a982407073d0ba11d7f1fdd1ec7e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2439/magpie-cli-linux-amd64"
      sha256 "46303b886b479d1ec7bbe02397a514b9869d8566f732d939b1b018867f9cc5b0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
