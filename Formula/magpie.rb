class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2531/magpie-cli-darwin-arm64"
      sha256 "939ca7a31584b3cb6e06914a71680786da38abf15a2ebfe69e0d763ad2a585f6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2531/magpie-cli-darwin-amd64"
      sha256 "cb6a75747397930a59923e9ab86599e532f25436be5d8eeae7f76246f536a5ae"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2531/magpie-cli-linux-arm64"
      sha256 "c82f0abde2fa9ad43f8c1523bdd7e79471925c8448df9a8530953ddf8efe1187"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2531/magpie-cli-linux-amd64"
      sha256 "47aa782ab8c0f7e13875f854f44be71436e5188875c6c3d4502b2afa0b390269"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
