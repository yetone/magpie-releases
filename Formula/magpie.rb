class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4457/magpie-cli-darwin-arm64"
      sha256 "e02991ce200442196d48ace21474dc0d14f5b466dcef99f99ed8ad1b0f07ccfa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4457/magpie-cli-darwin-amd64"
      sha256 "b0333a2c811a79bfe3158103f813afc62beea70795a6a846d7a31d60fce2fcc7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4457/magpie-cli-linux-arm64"
      sha256 "8ea65ba7af2381ef28e72d6cd01e671608511ccd51645bb180ce136f43ffd675"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4457/magpie-cli-linux-amd64"
      sha256 "fc44e15cdafede795a6ba191db862a63c2cf086442d4fb4e598074efbd9420bb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
