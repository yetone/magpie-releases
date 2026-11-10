class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3644/magpie-cli-darwin-arm64"
      sha256 "667557936dd5824493cbfb5e9e16cf75e6a84f585fdc50325e9ed9431bf39e36"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3644/magpie-cli-darwin-amd64"
      sha256 "ca903fc644441afd563d07101139e076ed914014179949292aa346863fc5e84e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3644/magpie-cli-linux-arm64"
      sha256 "26bfad14a5cb2b31f9cb2d29f8bd756c6a897ad9f7d6d59b65e9b921ea538b74"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3644/magpie-cli-linux-amd64"
      sha256 "b4b7afcb1b898cd93f488e6bcb1c9417a4db9b104ea0d94c94947a9995ceacea"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
