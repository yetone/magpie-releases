class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2295/magpie-cli-darwin-arm64"
      sha256 "ba6b7d74b09d39fd981d322960cbeb34d23f213c3c9a6f07849aa605358dabd0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2295/magpie-cli-darwin-amd64"
      sha256 "9bc3016090ea10fc594e010e5a0e8defa58d3a08243976f8ad77c29385874d23"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2295/magpie-cli-linux-arm64"
      sha256 "45dfad1027eb9a266b145cbb977d9521c643a7c47b9e052b2ef28c59b7e176e7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2295/magpie-cli-linux-amd64"
      sha256 "0c83b8aac6c7863822f3db603ad70bec0aa1c589c2cb6180d3faa38c8c30efd3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
