class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3843/magpie-cli-darwin-arm64"
      sha256 "f103edcd8f6d0dbb1e15499cc4388a53054e51d37347c219afe0d91559eaaa35"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3843/magpie-cli-darwin-amd64"
      sha256 "8749586aaacc1acd0998f5f07806054d3c7cfdb72e7e4452f829d5641162567b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3843/magpie-cli-linux-arm64"
      sha256 "1c7ab560c5d3beb70aca62836a588496397bfb3b0141510e2f6f158d82d4fa25"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3843/magpie-cli-linux-amd64"
      sha256 "097b153f570df9d34cacd17cffc33a58681ec274c00782b0e5e019b48be0dc71"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
