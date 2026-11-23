class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4713/magpie-cli-darwin-arm64"
      sha256 "14f76acf66ac1ee3a392a1c60bc370e10a5c384e30bbd5866815444817271de7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4713/magpie-cli-darwin-amd64"
      sha256 "ab0beea21fb1cae76785f6f8c7010828b43e38abfb3857a00bade904cf4445dc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4713/magpie-cli-linux-arm64"
      sha256 "dc60b3cd9fa3d458110170105326e8ab37cb444cee0f8bdb872c628f3cca88d4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4713/magpie-cli-linux-amd64"
      sha256 "f2e62589c7d2d429dc9361e11f6abbdb3add9292364faf916ee9a9d10ca428d2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
