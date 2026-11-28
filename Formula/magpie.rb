class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5041/magpie-cli-darwin-arm64"
      sha256 "9a95896b155c731da58190d612e431a5edcb0b42e279a6bce86db8d10815c300"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5041/magpie-cli-darwin-amd64"
      sha256 "644288289ec64abb8d2b03b96a61616fdcc34749a6645c62305ae61500570b0c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5041/magpie-cli-linux-arm64"
      sha256 "1acd66a64fc34d5c205d716c8d2abb223fe1b937bfdd4b12b54d45f26536272f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5041/magpie-cli-linux-amd64"
      sha256 "693aae4d62853d6144438cd71c9010108d5335ddbbf161d66194c14a58f33776"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
