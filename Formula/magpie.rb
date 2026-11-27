class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4932/magpie-cli-darwin-arm64"
      sha256 "76c60164c50d73d43e2366abd778261eb838d85007f21c2f6f4ef22f827dde3a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4932/magpie-cli-darwin-amd64"
      sha256 "6df5020380f53edcf35f7e3f34b212e7367716d466dbca6508969a7d33172747"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4932/magpie-cli-linux-arm64"
      sha256 "141fa6670c806839f40d3cada9c2ab945311eb87be898427c1820dd786938af0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4932/magpie-cli-linux-amd64"
      sha256 "827ba72dc2ef79509e9ef8e84ba6838fde2e57001ea0b4a6ec948a5648efde82"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
