class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3205/magpie-cli-darwin-arm64"
      sha256 "34527827313deee6f3e07494a5c696304e4906d7531da88ce469a8cf8681c3b5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3205/magpie-cli-darwin-amd64"
      sha256 "1b49eb383aa88fc3f57d5684a68e3f40b63525749ff77a784afd5df289bc6e67"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3205/magpie-cli-linux-arm64"
      sha256 "a51f0c0358e82e146ad61a6a0dfc7f2a22d8d0fb035fc6d0981b7522d133b2db"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3205/magpie-cli-linux-amd64"
      sha256 "4c454ce1df9beedb7025f2317bc048901d1b59362ad6266701a056869bcf39a7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
