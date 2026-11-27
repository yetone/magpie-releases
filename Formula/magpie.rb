class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4924/magpie-cli-darwin-arm64"
      sha256 "f3b7ad9fc6f6a9b898f267b9c63b0e48fc445f8a45643476dadb01d19833d048"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4924/magpie-cli-darwin-amd64"
      sha256 "5cd046b4b16b317803005a8ffe2ca5b4335ecf4f88990c88289cf8f8578f8bc8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4924/magpie-cli-linux-arm64"
      sha256 "1db22c6ea550bdfc88b163f6671f8c4e2e5f9fdb3f568df63a897c22f281d188"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4924/magpie-cli-linux-amd64"
      sha256 "fab7da2ce5f60e2e6f606bfc600b852ab23769a9244ef8e568f6c606b368f25f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
