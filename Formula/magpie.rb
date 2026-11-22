class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4681/magpie-cli-darwin-arm64"
      sha256 "bcd270d7fca37c3acb0c5900bd215e90930aef4f6c2e9d250c7a17b4c472d447"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4681/magpie-cli-darwin-amd64"
      sha256 "50ae1509f6d3986249350b7cfd018a58adf6613e034241defabb98fed475cb75"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4681/magpie-cli-linux-arm64"
      sha256 "24852cc8b141b077b6fef80e1feec876b4ed610e080d362cd23549d3830e77b3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4681/magpie-cli-linux-amd64"
      sha256 "4e8e37c0603bd1dd18a94bf8e9a3025424841cf9b1f510db4348fc4ccc8c3dc9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
