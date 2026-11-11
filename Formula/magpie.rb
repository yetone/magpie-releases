class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3674/magpie-cli-darwin-arm64"
      sha256 "bdf6137ddef9fad80eef7095dc8d5aa305aae6ecef793f6931b8dc64f8b8ddde"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3674/magpie-cli-darwin-amd64"
      sha256 "1f1b48b95cd7cb6b31948c10b98722a04f0f9baea07995628f9567172c266a3d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3674/magpie-cli-linux-arm64"
      sha256 "9bc37ef458c787af761a5d419cb2e7aff59e486c557a0bf0377bcade31d06bcf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3674/magpie-cli-linux-amd64"
      sha256 "102953546631dd78b983b16f99c700d4135f5bcd00c36ef36f5ce470b3ffbbf9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
