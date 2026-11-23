class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4708/magpie-cli-darwin-arm64"
      sha256 "55cf2b9692f017bfa63ef963b04d0c6ecf984f14dfefc46246990ef75e5b44a9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4708/magpie-cli-darwin-amd64"
      sha256 "42d8133a8714bc9f641788b89a707344fae1d274b5e7b1c4256970c254a1c33e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4708/magpie-cli-linux-arm64"
      sha256 "2d5861af8f55dc08a4a47aceb7614c418a44ea0f37c1d037faebcebdac7fc0df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4708/magpie-cli-linux-amd64"
      sha256 "25975b889a54a6aa1c5656020f36a1f7ba14402f8e7087a70d371cb8cfa9a754"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
