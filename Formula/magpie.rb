class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4994/magpie-cli-darwin-arm64"
      sha256 "b8d42ccdb3c7b04f571eaa5ea11f589bc617ccfeacdbd348061374d35c0de6d7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4994/magpie-cli-darwin-amd64"
      sha256 "24e52235ccd7dd616944739fa7e80a7b655f755d931f1208e6fa4f50583d19c8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4994/magpie-cli-linux-arm64"
      sha256 "cdc914423cb137e668c981e3e346c02c34c6739d00d2cb875cf9a5d6a4fd3d3d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4994/magpie-cli-linux-amd64"
      sha256 "8e715270e88eda1ebe72f34ab8a267580e509fc57fa0e9135e2725884fde831c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
