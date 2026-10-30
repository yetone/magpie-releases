class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2136/magpie-cli-darwin-arm64"
      sha256 "a0ecbc6ab0d6132525a0e726082e86c525eada21fc1a8e31cd1e46f8efbbed5f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2136/magpie-cli-darwin-amd64"
      sha256 "42ee585cc740e328050de642393dc3f47800df03e714fd5f3eef4db3572c4594"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2136/magpie-cli-linux-arm64"
      sha256 "cbd6aa65d1dafd5246ab84e5a63b6acef827927596a1b99e4445d8a6d65b622a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2136/magpie-cli-linux-amd64"
      sha256 "fc93de2bd9b6f48013752a45d46f7f485f0a6a5671f11abd9134f970cf9a2180"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
