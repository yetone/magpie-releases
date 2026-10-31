class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2369/magpie-cli-darwin-arm64"
      sha256 "2e8081ced1a855fe07e6141cbc5bc2f618cf394dde96c14a524d7124d04c9605"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2369/magpie-cli-darwin-amd64"
      sha256 "a5f018d223fd3a507e5da7ea8bfb7e8bd1482a54b8b03447182e43f7ba64282a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2369/magpie-cli-linux-arm64"
      sha256 "6b627fa00e3da72c015e8712a9c7c2bc5aa0aa68d25dfc4c5f28e01c8106f888"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2369/magpie-cli-linux-amd64"
      sha256 "c361d71102a4b10ce5c5eff47d130c2355fc2db9925bf1df678ca239fb39b842"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
