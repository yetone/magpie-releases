class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4637/magpie-cli-darwin-arm64"
      sha256 "a3a783fc27c8cdbfb2ec231454c24659c407072d03ad0520e37a14b1f7aa2487"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4637/magpie-cli-darwin-amd64"
      sha256 "0b90f64ccdb54b35e4c5fc5ac1950955120c6a2e3daa4fa32f34f9861a5a871f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4637/magpie-cli-linux-arm64"
      sha256 "604711a5b50eba89dceb7799adaea1f3433d4fa81a6608b5da3a49f27a0edfa8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4637/magpie-cli-linux-amd64"
      sha256 "41cccce9eb421cc278c109ad262a81beb9ede181f07d4b369a73331653a82db6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
