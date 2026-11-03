class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2773/magpie-cli-darwin-arm64"
      sha256 "f71f4c7dc0d7766c52974587c1c527eab1032256e2f9dcc8c0cd6640ce1bc1a2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2773/magpie-cli-darwin-amd64"
      sha256 "90804bbca3941bd6457baa22007d52003eb5efaff9d015158141d1e475b22413"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2773/magpie-cli-linux-arm64"
      sha256 "edc70c90f8821e312a5a994c51386f75ae238dfaca9f183613f4393f930e0f12"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2773/magpie-cli-linux-amd64"
      sha256 "2b97dccd1a80ebc523757b96a233a3b856f7cdbfac766e91bdcbee1c98218029"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
