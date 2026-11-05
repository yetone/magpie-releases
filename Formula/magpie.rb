class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3074/magpie-cli-darwin-arm64"
      sha256 "896e1b7f24a14887d52f3534b454158f7da039e6705f83f898cdab27a802b246"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3074/magpie-cli-darwin-amd64"
      sha256 "1c08e618bf387b4571242bc40f06f82ed70434e48cc82e3699f71d6b52b01aca"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3074/magpie-cli-linux-arm64"
      sha256 "6daf46a6f502785c62e5a936ce6a7dfbfbd8f2c4f10c168807f3142903e378e8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3074/magpie-cli-linux-amd64"
      sha256 "88a768454a3ed5f7038a11b8adb7899158cc094b324eb83815abd560ca87ef67"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
