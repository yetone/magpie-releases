class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3847/magpie-cli-darwin-arm64"
      sha256 "d8f0c22c1f49aa6ef26fd8fbf179e40cb8c886a9e7f17bff23dc0f2cdcff239e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3847/magpie-cli-darwin-amd64"
      sha256 "fc238b10f9c0a27c29191360e9426d2acff0422cac7a2742f1f3b57f59013a2b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3847/magpie-cli-linux-arm64"
      sha256 "cdacb4e3552ecdafe38def98690d40ced8c8ee0d502ff22222e8b18343765f13"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3847/magpie-cli-linux-amd64"
      sha256 "7c01dfe6718b6ee7c0dfe7de9884b3e3a9946f4ab167112d58bfceed4e56b0be"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
