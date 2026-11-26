class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4829/magpie-cli-darwin-arm64"
      sha256 "9dbacd1e9b402e07b31234bf4d56e98c5d034a303a494c35afa575aaaee70895"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4829/magpie-cli-darwin-amd64"
      sha256 "f80d0b7b4be02165d5b1433d7ebc8804e3d7ed1e731c218a1d5e6f9c54e8bfee"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4829/magpie-cli-linux-arm64"
      sha256 "76ee8e20f12176125125c4933b3a26f5da211d07f0935449f5bacf1299c26607"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4829/magpie-cli-linux-amd64"
      sha256 "f44093eea169c9b5cf80a24d8536e6c56003cf9a41964e5a2495ed8995df01cb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
