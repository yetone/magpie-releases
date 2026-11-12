class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3930/magpie-cli-darwin-arm64"
      sha256 "e5f8fd9128eb200b9afc6d9bab1ce33b266fa2a2297210b10594b6f7d44314c0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3930/magpie-cli-darwin-amd64"
      sha256 "bbdd58d11b402a9f970f89d0d200d8ee01c7d8e03bbda88ce89b804f6608cb52"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3930/magpie-cli-linux-arm64"
      sha256 "276ee274395873246904de0a7d5d6eedfa490207cbe3a963721b71e4ff36637a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3930/magpie-cli-linux-amd64"
      sha256 "2d54785819e8bd43a9d9c5acea08630a9609a9531d27e7395d090a6a03763b7c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
