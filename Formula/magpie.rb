class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2654/magpie-cli-darwin-arm64"
      sha256 "427b0fd823c2d814d5dab679d5afc8f05e2277648e9efbcfc3e821299de60407"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2654/magpie-cli-darwin-amd64"
      sha256 "b95652b7f9d7bec0e25316dcc71434a512a983cf5efd6f75a681d7b58145bc24"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2654/magpie-cli-linux-arm64"
      sha256 "dcbb643a3dead092744f90d3bb339ff7a65eea8d4dcdab7305d0f165f129e835"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2654/magpie-cli-linux-amd64"
      sha256 "926a1136586585c2e4947095ef70f78b853b45d2f47907a5d6e4a90cba4b1443"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
