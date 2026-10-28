class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1885/magpie-cli-darwin-arm64"
      sha256 "cc1fb53de91f66b5d179c812387d9f6282a66c218ecd9e0175d4cbc2b4ba861f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1885/magpie-cli-darwin-amd64"
      sha256 "af50c5d20852a2fb6939253207432a4b6b3869c3d5f7e3442b1cf4adaf04d9d8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1885/magpie-cli-linux-arm64"
      sha256 "6242365a3f5e1113864ea7fc73ba235482405003747968a132c0aff844b419c2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1885/magpie-cli-linux-amd64"
      sha256 "0c4f0176519f920e6c7329ccf57c1101f47650ac05fe902738ba22809a572357"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
