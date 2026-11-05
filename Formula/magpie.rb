class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3048/magpie-cli-darwin-arm64"
      sha256 "4f116ed22ab9788cb2e75fd349c5fe223768231060eb1d87e7231f0983aa7be5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3048/magpie-cli-darwin-amd64"
      sha256 "373644efb3c08643cea6fbe486e08717d62da4ebfce5a3b58a0beffe383c7e98"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3048/magpie-cli-linux-arm64"
      sha256 "8180d4d3f42f5d1fc31a5ceb1efdf28062d5d72afdafdf796af3bd2595f47062"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3048/magpie-cli-linux-amd64"
      sha256 "df4f003b5b1a9ef838ab3edc7631990f65471f280e3499306fac0f929c357cf9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
