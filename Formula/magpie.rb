class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4116/magpie-cli-darwin-arm64"
      sha256 "f4ea9a108daa70b9857655e6d11bdba0bb13cb4bbb3b1f7ab46febd3862b37e4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4116/magpie-cli-darwin-amd64"
      sha256 "65258f0c6a12f2358f35c56a2a58feda256a677d301cc33012a063cccda7e386"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4116/magpie-cli-linux-arm64"
      sha256 "fbb3b2f9fd04b87a6aa83a7b1683f88ec981b21f5b8e1bb6d9f2265618438655"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4116/magpie-cli-linux-amd64"
      sha256 "89d4af900a2cc85ff19b1b08b670d8ce74308b090c2200616eec97e73c57ba59"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
