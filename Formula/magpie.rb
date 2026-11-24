class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4773/magpie-cli-darwin-arm64"
      sha256 "09686ea3436cb26ebedd4ef014e8e128e992eb1becec5a28c599277f3eed5081"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4773/magpie-cli-darwin-amd64"
      sha256 "7fab23eeb4449f16d23c827c8f6bc7d8dafb021668e6cb6d2535b94afc2eb1fb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4773/magpie-cli-linux-arm64"
      sha256 "a99e0b42a5481aebe9a8ebb6d402cd20ec6cf1263ed4e8690442062cd437c563"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4773/magpie-cli-linux-amd64"
      sha256 "ab70fe19365ef7a3c0cfc811c09e134dae55b3e654766367a05fab50a0212825"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
