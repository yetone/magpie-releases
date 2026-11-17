class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4381/magpie-cli-darwin-arm64"
      sha256 "cc77c88a459e4c77613443cd1bb8a0f9cc6e1c14ab85d65e262be6285fb4489b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4381/magpie-cli-darwin-amd64"
      sha256 "b84a60f22470c2928a1ff2e77d4e04dff29a74ae9a5e10f342fc7fbab80a1e93"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4381/magpie-cli-linux-arm64"
      sha256 "2e5dffb7f06c04c603ac07ce87114400da40b105457274e226ad3afdf9467d27"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4381/magpie-cli-linux-amd64"
      sha256 "94f377983cf5d490f61c0c1967f24d3938853f59ef656ddbc4c821bbeed31281"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
