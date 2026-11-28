class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5016/magpie-cli-darwin-arm64"
      sha256 "3f79efb3fad35a82408eb2db69f14f93395aa4b2175de9aefa7cbb27bd8308b4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5016/magpie-cli-darwin-amd64"
      sha256 "40cfba79e1cbe01ee23fdb609d43e8f0bae33c02703d3a60614934d450b9c7fd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5016/magpie-cli-linux-arm64"
      sha256 "26d3695704fed9815367a8ee25c5d5202c33b1ae198257c427ce079ec1a9d8a7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5016/magpie-cli-linux-amd64"
      sha256 "0c263de2f62ea098c18d8cad436d4ce078c8cf6f679d63948a4bfc3a53f47ef5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
