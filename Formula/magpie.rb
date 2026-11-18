class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4486/magpie-cli-darwin-arm64"
      sha256 "f1d67afca7f402d5a424baffebdbbc36d5ceaf1666c2b176885c4045df309d34"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4486/magpie-cli-darwin-amd64"
      sha256 "2a87080b3a6b0ad88d88819292cdd7e0692baf8acff274bc30a89119da2d67ec"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4486/magpie-cli-linux-arm64"
      sha256 "c8773d5b11674c03f0877ef55c717827261cdc993b48950d92740fd3a4503082"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4486/magpie-cli-linux-amd64"
      sha256 "430a569d61d8b43883af3947aabe2b08a5f9ed0db59874682386ba79250eb6e8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
