class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4006/magpie-cli-darwin-arm64"
      sha256 "3df3bf12d5f41839466beebbc5ef461746eb5cb6259871e1360d77a3767a485f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4006/magpie-cli-darwin-amd64"
      sha256 "959d3e008f7f9a60855c9ce6cab4f2ca5262f95e7b92e9bab30725fd870a465f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4006/magpie-cli-linux-arm64"
      sha256 "60387729f70a51db0bd2abde0680f182de52886497d6fe0bc5b7bce2cfca39d6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4006/magpie-cli-linux-amd64"
      sha256 "184bb118b0ae40d4775aa6faf2b80419ff4e163e3e592d1d5ab3922dc52a4315"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
