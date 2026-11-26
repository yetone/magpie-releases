class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4864/magpie-cli-darwin-arm64"
      sha256 "051e64351a0e7a18aeb5c02717b9ec9940b7018c8c1b5e8ef8adb61d36943a20"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4864/magpie-cli-darwin-amd64"
      sha256 "379c4795b9361ec503d525b045b68a946c6e2d2a4ff17067410197e3e9e9f850"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4864/magpie-cli-linux-arm64"
      sha256 "76c679d3ff7e9d65d0d8d537225ea13fe5c062e7540a022b4406cd4319a76ea9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4864/magpie-cli-linux-amd64"
      sha256 "ce7e53f08637acaa25651956eef3d56382d0bed6de51193b86990e8dad1d38ab"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
