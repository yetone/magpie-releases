class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3731/magpie-cli-darwin-arm64"
      sha256 "4bd3f0fdf3ff213605dd30a7814f6ebceaa30f46cde77212d7b8f1c724b8488d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3731/magpie-cli-darwin-amd64"
      sha256 "b9f1ea702ab5261e2bbe6ebacad52d7c3dd2620973c43dfeb0d400a66f7e154e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3731/magpie-cli-linux-arm64"
      sha256 "38613d03e8fe1e8ebcd27080dda902f077d153d18e68d64bdceac08c8e43948a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3731/magpie-cli-linux-amd64"
      sha256 "4e15a86a42fd4b0b9bb2330492df5a9483e7b753623d3df1207bd863627fbb1b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
