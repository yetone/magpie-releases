class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.997/magpie-cli-darwin-arm64"
      sha256 "88896a4f623e1757c44d416bc0f5a4b26eeea232c0921d64b52e6e2e86c4c152"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.997/magpie-cli-darwin-amd64"
      sha256 "94e0e9e9625d9ed08ba8811cc3dd0d3abfbb386f93e5412bdd9e32accc3807ca"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.997/magpie-cli-linux-arm64"
      sha256 "067f8f80305f8da802c011a13723fe8af990c367846430332f7927bfa1e22679"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.997/magpie-cli-linux-amd64"
      sha256 "14e54e3295d7203017c34d9521d2f5ca3a46375526c18482f12f1d5cd501c9a1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
