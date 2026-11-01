class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2639/magpie-cli-darwin-arm64"
      sha256 "d226d61288a86030d3c0720609f12705e665eea1c9f1cb7ba4405c2e54dffed7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2639/magpie-cli-darwin-amd64"
      sha256 "2ed4dc13b0bb9e07055efba79391c363370156969080b4f3a607eecae486eebb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2639/magpie-cli-linux-arm64"
      sha256 "f0da4c0f4c6e0cad49daf510eb0beb80915f8f8cc2258f786e396b8c275dc114"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2639/magpie-cli-linux-amd64"
      sha256 "f841c051a67e59664bdac966e8e2b805a84ea1dbfc5c51c68620f522a913f1fd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
