class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4986/magpie-cli-darwin-arm64"
      sha256 "fdbb75f8e0c4a6383d4423f45bbcdec8e645c37d8d5228bc53f9cad5712caf1c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4986/magpie-cli-darwin-amd64"
      sha256 "b5a01bf5e5019c7ae329e7c524cb78d6e14eac0419058e2c4280c9fd2a451ba8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4986/magpie-cli-linux-arm64"
      sha256 "d4eb394b5d486f28b67e1042527b425591df141c239763857b38c09386576c2c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4986/magpie-cli-linux-amd64"
      sha256 "4a35d879920e81769d0339cb54986584c45b634d3b49c58c9d248517d40c6f91"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
