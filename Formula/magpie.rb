class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2753/magpie-cli-darwin-arm64"
      sha256 "66be1b82c116b0521115793c983fe9b652831f183ec87ce95a77200a9b549bdc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2753/magpie-cli-darwin-amd64"
      sha256 "aa3e892d9a952b62f9fca755f1f5364f2ad3470cff4a7c4369672d67071ef5ab"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2753/magpie-cli-linux-arm64"
      sha256 "b2542a3f8dd908ac0a267b4dca88ffb7fbe76d88968a1072531394ea4539dda0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2753/magpie-cli-linux-amd64"
      sha256 "5ec0ed314f0ab38bfc8f681e5e659fe273efa8f68e346249ce9b0dd1351110f5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
