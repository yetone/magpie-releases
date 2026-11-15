class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4262/magpie-cli-darwin-arm64"
      sha256 "831e6366b2aaf8d56d5cc5de32d6fc17feaf21f966a392e3ceb580f5d8e6bad2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4262/magpie-cli-darwin-amd64"
      sha256 "0a49bb9846cc3a43ac17b06d697188319c8fc50bbf32b8ae2b71258494c4b08d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4262/magpie-cli-linux-arm64"
      sha256 "bdff172fced06884d4e350d4e6d96b2905a186ead96a6a0ceba40fa1160398c6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4262/magpie-cli-linux-amd64"
      sha256 "959cac95a07b716f7605a93a2014332a371f70f0a15bb89751a6514851530623"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
