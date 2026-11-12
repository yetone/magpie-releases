class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3857/magpie-cli-darwin-arm64"
      sha256 "d01437d779dcb85e7b78a19a959f2322acd2381068febb5bc483026515230ff0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3857/magpie-cli-darwin-amd64"
      sha256 "000121cb8b0c8a89d8cef677d58c34358bb7c2cda926cc78285cfbc50ead2fd0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3857/magpie-cli-linux-arm64"
      sha256 "105df58415e6eaa28bbda70fbdde25f4f34293b3d7072b562446f4fbf58ce588"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3857/magpie-cli-linux-amd64"
      sha256 "9195681a69b737678f22e52a7d2a10a04cc302e43d2a2ef65964b5e13dbc8e2d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
