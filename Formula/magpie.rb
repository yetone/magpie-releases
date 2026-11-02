class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2700/magpie-cli-darwin-arm64"
      sha256 "a52b73b1d1a8e83814694443fd5c976737786d3af0a330dd9f34d95487965135"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2700/magpie-cli-darwin-amd64"
      sha256 "e1b29aa7d2c5ed1a6ca6bbe4578887203a574d7d07f72d82e4ad2090d6339d18"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2700/magpie-cli-linux-arm64"
      sha256 "9ea216f089cd336472619901ddd63ff2465463b05a2305ec7a225443d64e2a11"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2700/magpie-cli-linux-amd64"
      sha256 "b4fec8bbcd7853ccad662adf7813c5a72bbcd6a5bd8825dd7fd5f7d383e0ba84"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
