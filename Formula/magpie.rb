class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1010/magpie-cli-darwin-arm64"
      sha256 "ac59e851197e71af0a01feaa8204d06e47d2ec7c7830277be62214f5d81aa810"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1010/magpie-cli-darwin-amd64"
      sha256 "c365d6e0e9ca0db60e84d780968bac9dfb9d604a0d5fbacb8a5f08d1c04807b8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1010/magpie-cli-linux-arm64"
      sha256 "5291991600797896ec12c230628f11cd419db6f294b2f7ac994e957bc3720ca5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1010/magpie-cli-linux-amd64"
      sha256 "31cb23f4179de2bee127644a68cc4f9b657dc6aa4b118e96496124b7f6d28e9b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
