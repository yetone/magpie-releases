class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4366/magpie-cli-darwin-arm64"
      sha256 "5c47f32f4b6c3b72b340a882ac2405788c0f7e28a18421c13584327852403da1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4366/magpie-cli-darwin-amd64"
      sha256 "fbd49da43365bd8cab6800f1630f110d654d7fadcc0844db00211e23b3e60404"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4366/magpie-cli-linux-arm64"
      sha256 "1225bfed0db3e0f31551aeb54c258f77573e84032b6c96f0805ec518734998f2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4366/magpie-cli-linux-amd64"
      sha256 "9e6a224706d0ac3b45e9e8b37282c08263637ad650f7914e71be5067908163a8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
