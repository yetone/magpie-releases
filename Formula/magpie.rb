class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5051/magpie-cli-darwin-arm64"
      sha256 "ccb803c9ac412b23f421a541abe46882fc50927833c49a8e312bc7a821c25a97"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5051/magpie-cli-darwin-amd64"
      sha256 "9f1b7cdd74dc0f6e28e494f0b7b1c9268e4a5ec9f99e51199421006366c4b7d0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5051/magpie-cli-linux-arm64"
      sha256 "660bfd1e7b0076022ea54bafef553e720e43d1df2d9860e9a3e17c400006c0a9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5051/magpie-cli-linux-amd64"
      sha256 "b4e929d21b25fa3c46b9fb113e224ef4b6c65a4d308c40671596c2b049abcb49"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
