class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2820/magpie-cli-darwin-arm64"
      sha256 "9c2fe9d887f67fa47511acaf567c4c0b1ff075e9762a1f695b8ff59e17bd4445"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2820/magpie-cli-darwin-amd64"
      sha256 "534e9f66f02758047a044dc7e72e88a0559e6af597a4be35d9f0bf4b8cfa1840"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2820/magpie-cli-linux-arm64"
      sha256 "7a6023cb850f84a4611a80e11f275494d7b38b800766933ba9aff2c0322269d9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2820/magpie-cli-linux-amd64"
      sha256 "18aa6989d6b1355797305dee80c1c268373a872190bcaa4cd497d362e7c3e08f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
