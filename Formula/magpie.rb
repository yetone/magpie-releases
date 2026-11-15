class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4234/magpie-cli-darwin-arm64"
      sha256 "106ba50ceae0354b078666ef4470089961f28e2cc6794ba88183ffbcbc6c4024"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4234/magpie-cli-darwin-amd64"
      sha256 "c1aff4250c2710bbec9269b6e6bd8a16d655a3127003aad4d19cf72e660d2d5f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4234/magpie-cli-linux-arm64"
      sha256 "64ab61ddea374ea6044b6ca49968e36d0c9444ab808b79e631800b69ab1d9cf7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4234/magpie-cli-linux-amd64"
      sha256 "471076c84fabcf597a63a89c97117d7d02eea15b212cc6a2a597f638421aadd5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
