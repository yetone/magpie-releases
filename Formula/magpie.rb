class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4775/magpie-cli-darwin-arm64"
      sha256 "cd5abea21c2089313f6ed2acb18a478d87836269d2734c850d5e04e1c1fa9fff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4775/magpie-cli-darwin-amd64"
      sha256 "f0dd2982ed8a3976f5b454bc01a6dfbaef9a150f5c6db8c5f9ac16fc6eed38fd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4775/magpie-cli-linux-arm64"
      sha256 "9440b43ae5c23c8012060a6ce2d7fe42e22efa93577834b7cec2bfdde6be1b15"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4775/magpie-cli-linux-amd64"
      sha256 "a3582e4ebc9144ef88be1ca6f832b9e481893d1a3e7b749fb5a9f40b03906d11"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
