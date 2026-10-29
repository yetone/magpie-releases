class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2064/magpie-cli-darwin-arm64"
      sha256 "15d41fc90748ee6a3c93449030467ab71fbd849fdb7ad721946c9862034552ba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2064/magpie-cli-darwin-amd64"
      sha256 "8d7bebc12842cd4d22952b07523126cc92b42a647d70f8a596ef00667f3e205c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2064/magpie-cli-linux-arm64"
      sha256 "4501a27e4953f2d5be77be39081478cfafa76a921dc3d9da87bc46e000ee3f12"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2064/magpie-cli-linux-amd64"
      sha256 "86100cd416d6388b0e6d9937a975f6af099b430f9ede4e775c2067da6470ffc9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
