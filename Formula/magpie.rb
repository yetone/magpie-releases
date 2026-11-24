class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4761/magpie-cli-darwin-arm64"
      sha256 "ca158e2608117a889dcd0ee08752e58f539c54ac3ee93a478a2e469674f61e66"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4761/magpie-cli-darwin-amd64"
      sha256 "215c100d3b8f07ba9034766641b57e23d47df3680293147f44c5a260445d245f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4761/magpie-cli-linux-arm64"
      sha256 "b0431ebdbc13887b7fb92d8382bddcd6fc4a845473118137bab0636d45581242"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4761/magpie-cli-linux-amd64"
      sha256 "3a75a7e9d1e80a3da8799cadc9fc2a93274b1c337c73eece22518c8f7bc20054"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
