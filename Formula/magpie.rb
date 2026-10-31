class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2443/magpie-cli-darwin-arm64"
      sha256 "bb4e5521437dc146190a23eb9ba31a1d1ab9a05a8c9f4d615bdb3c3f398e3ed6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2443/magpie-cli-darwin-amd64"
      sha256 "bfd4f190d56956ccaf127d4411dcac75cc91c1ab17a4ec5e56b4d87ea96e4825"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2443/magpie-cli-linux-arm64"
      sha256 "170f6481f9ed12cc68803fa2396f73beb064ecbce7386967c5ab6bca9150fd7d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2443/magpie-cli-linux-amd64"
      sha256 "4f9b2b8f3981c4eebdfd82564173f7aca0997a10224f7e8703bd049288ba5d23"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
