class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4768/magpie-cli-darwin-arm64"
      sha256 "638abb5011e1c9e8128c6c7bb31b39a3c2ec9cf22293175efec35de4d254327a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4768/magpie-cli-darwin-amd64"
      sha256 "43c0dfae527cb76937b6c784c671b65852ab137a0309f141dd6a66aaa6c885de"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4768/magpie-cli-linux-arm64"
      sha256 "8aa5ee650927829e1156036ddc9da62061a2b11bd0cb73eb84a9db9b019578ee"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4768/magpie-cli-linux-amd64"
      sha256 "465958fe449302d6b2d6219ffa36463b031736bb00b26c6586604f498778efd3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
