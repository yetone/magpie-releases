class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3346/magpie-cli-darwin-arm64"
      sha256 "bc3deaab029de72f61e88bce3af9996eba17f8ca397351d6737b97dfd10e1642"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3346/magpie-cli-darwin-amd64"
      sha256 "7856fc8a41fea04a6a0497f5f91d21dd0254a481189f82013f3b70e82b59b732"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3346/magpie-cli-linux-arm64"
      sha256 "051d73772bb5bbf1b532e6fd49650e237972b638d883aebd5f059db04ac676c9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3346/magpie-cli-linux-amd64"
      sha256 "630c84f57974aa126dc2137121afb80031c05d103b0d86c22e156cf405b1b392"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
