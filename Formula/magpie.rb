class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2786/magpie-cli-darwin-arm64"
      sha256 "aed4ce11ff783d7c288961499832f9748b305e300c296972945d19e783276554"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2786/magpie-cli-darwin-amd64"
      sha256 "dc3d6ecc5a9f1508c657518aa619c7ad765f7f99c9563311e08ef3b1ec7bfbbf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2786/magpie-cli-linux-arm64"
      sha256 "0662f3e5a18de733dc76fb5ec2e84f1032efa06456043e8edc7ce98a1cfcefda"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2786/magpie-cli-linux-amd64"
      sha256 "2cd3c624526481540ca311cf1df9314f23773811540f0d09f9b615e665d46e80"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
