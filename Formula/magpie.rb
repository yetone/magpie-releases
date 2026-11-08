class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3322/magpie-cli-darwin-arm64"
      sha256 "9d13770654c4aa1d48cb87e6de311d36fb2a01908d1e81c7378b7660f778f5ab"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3322/magpie-cli-darwin-amd64"
      sha256 "d1ab8c4ff82bffb6ec9a9d7570898962e02aeca803d0876a9a1b407abc85682e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3322/magpie-cli-linux-arm64"
      sha256 "d3545a7a9632e04c143b0644aa410b9d9d3db7f9c1e611bc7b242761ab1a074e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3322/magpie-cli-linux-amd64"
      sha256 "6383a21259569dc463e8b127d2f06be5a5f05b084c9bcdfa16303c845746da85"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
