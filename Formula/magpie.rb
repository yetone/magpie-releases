class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1988/magpie-cli-darwin-arm64"
      sha256 "7e980cab311e614c24d154849bb61ada36111425502b79c11c4cb50eb3061799"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1988/magpie-cli-darwin-amd64"
      sha256 "6f0ede33fb6360e957eb9b39472ffb382b2b672b9ba30590bc21ebb4c84970eb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1988/magpie-cli-linux-arm64"
      sha256 "cd2e650cb6030ae62a9898928e342460946e11f71d25e494674190b2b1ad6152"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1988/magpie-cli-linux-amd64"
      sha256 "8b8cc56bf23b14d62c0bf0bf7c7eb8aafaf96a16a6dbe6b41c9b357061d1ab90"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
