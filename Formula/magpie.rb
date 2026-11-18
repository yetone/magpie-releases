class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4493/magpie-cli-darwin-arm64"
      sha256 "e4dfe16c60b9c20dff35a9c8f836a1d1cd54eeeef94a04f65ed3f0b18c898678"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4493/magpie-cli-darwin-amd64"
      sha256 "2982f026bf60b3c01c9c51eca7914ad9932401b0dd215d9dd5a1b93c05f8c646"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4493/magpie-cli-linux-arm64"
      sha256 "d59564118a502d82e962aaa6433a40616fc2fe559eb89b925586c53b47a763f4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4493/magpie-cli-linux-amd64"
      sha256 "9eb4af9c75fbcb02184fe7d07b6ff1377d913bbaf844a21df5ad4e06bae60117"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
