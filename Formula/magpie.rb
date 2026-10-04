class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.909/magpie-cli-darwin-arm64"
      sha256 "95cd0097c46a1242cded644bb5b29c5602c6e6f9d466f42770cd9b3f97882168"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.909/magpie-cli-darwin-amd64"
      sha256 "bc0df8ed2827f92ba7b7914f49f806779c99418463b51a25ab6057ed0051c383"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.909/magpie-cli-linux-arm64"
      sha256 "b6b7f07a63ca034a640d44d9004cf988eac74deb050f63b3793f2db35966d4c7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.909/magpie-cli-linux-amd64"
      sha256 "3cb645a6f4fa5cbcec8485594f0891e2bc953f4fa3bc5134401ba42541d43eda"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
