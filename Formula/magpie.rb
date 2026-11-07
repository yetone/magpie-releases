class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3246/magpie-cli-darwin-arm64"
      sha256 "1974251555d94a7c70f0cb1170f657b0d8cf3b1361b9c85e2bb6da9f9c093b35"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3246/magpie-cli-darwin-amd64"
      sha256 "e8f2628d3469e1d28a34f5276e8ad2effc6ac36231a081184aed62663267e68a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3246/magpie-cli-linux-arm64"
      sha256 "1eae43ffb4d10b07619e47ec5cd6425063e4013ecd5de9b5ae31815dd929f53c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3246/magpie-cli-linux-amd64"
      sha256 "3113e869d4d0273a42acd630f9a050533fa7984ce9319f294b18193928c7e93c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
