class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4661/magpie-cli-darwin-arm64"
      sha256 "6bcd4b959724452584f05f2339f0a1ed53241b42bec71fcd1f9e6495003fca8b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4661/magpie-cli-darwin-amd64"
      sha256 "e7a0f3dcaa5acc308d7e638a513111622536fbc74c99c10e870eb55e9acf89ce"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4661/magpie-cli-linux-arm64"
      sha256 "19088a2106f4e2e626a0f420f5baae1e5329258e3af4062cf88d4b6193b174a7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4661/magpie-cli-linux-amd64"
      sha256 "03a9cf85a0c4895d97833e3f9051aa04d0ceeed59febce8d3103760636d4a51b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
