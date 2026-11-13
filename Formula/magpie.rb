class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4095/magpie-cli-darwin-arm64"
      sha256 "b7d20a17c7abbe5eeb41cad8485172d3df630c38d3c53bd76ef13c1fc0a8f5d4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4095/magpie-cli-darwin-amd64"
      sha256 "c28c788b23a1bc9d1d3eca854948b017e377c71e4537b07ef8ae0badc09a6a9b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4095/magpie-cli-linux-arm64"
      sha256 "a66ce33644e22caae73c2b3f8849b57b65d33c920e2a3966f7211aad7fd3c015"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4095/magpie-cli-linux-amd64"
      sha256 "d86743a569e2c7cab02876ce92769c8ddec680d5da507a3c020824b40b59e6e2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
