class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4441/magpie-cli-darwin-arm64"
      sha256 "293d8011957e9ebf1814281d989dabf45b18c4596c48467e9565654b60e73d66"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4441/magpie-cli-darwin-amd64"
      sha256 "2dbd57f4d5464232b814816641391657faf92a291635ccfad8983cc317d74916"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4441/magpie-cli-linux-arm64"
      sha256 "4882b72f2ca570254631ae1d49d16492494d5cc19904d0524543b44e8fa2e059"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4441/magpie-cli-linux-amd64"
      sha256 "b9fc07bf917563b5da43fc89b41cb5d7f86b0d36a7f98399cf46462f43d94598"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
