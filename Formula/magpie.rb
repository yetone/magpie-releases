class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4519/magpie-cli-darwin-arm64"
      sha256 "86b536288d974e1ae71115a34caecd3d4c0fbc00240675413ade6704b77e8aa7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4519/magpie-cli-darwin-amd64"
      sha256 "450eab263938b9ef2e2223875f8788ac6402174abfc235880e845d4972e6cf42"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4519/magpie-cli-linux-arm64"
      sha256 "a79a159929987aa9a3afe93695c09a1970c2e34c28251721a88b25dbc034717a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4519/magpie-cli-linux-amd64"
      sha256 "7be340642006df780b359593886a71f24a9e152843b9f4b10d3a196bba2f8bc8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
