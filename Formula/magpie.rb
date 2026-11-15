class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4264/magpie-cli-darwin-arm64"
      sha256 "628d7774955960daac981eba9d25bc65732ee2a3e12aadabd88f2a29cfa222d0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4264/magpie-cli-darwin-amd64"
      sha256 "706278dc1ed0becda0d485bf475ca60739147be2b5445da7ba49532efe96bd86"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4264/magpie-cli-linux-arm64"
      sha256 "18f68dce8f3bdf6f82d4a108253b68899039a0705d0ada6a1ee5b4087b829332"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4264/magpie-cli-linux-amd64"
      sha256 "58cbcde203d5645a83bfda4d5e6d9d06fc75ae140f39ecf0affcc062da6e0f98"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
