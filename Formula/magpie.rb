class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3217/magpie-cli-darwin-arm64"
      sha256 "a7c5d6e6b5bf2ea2188eed2795e6cd9cb21d3d197324f8c1c265f90810fa76c3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3217/magpie-cli-darwin-amd64"
      sha256 "631d2f5a10c6d78c0f76458a38642e3ac0eb21b0136b8da007a8e0c9a461867f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3217/magpie-cli-linux-arm64"
      sha256 "b7a5073c554056ef8e8261a24718009ed8f454488843b4462f2e6b33b4d80019"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3217/magpie-cli-linux-amd64"
      sha256 "bde7d951ec5cfbd4f5a6bcb0e24896d3f9a24941dc0948c40e9f46b8dd480675"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
